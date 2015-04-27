#pragma once


#ifdef _WIN64
#ifdef _DEBUG
#pragma comment (lib, "Vektoria_Debug64.lib")
#pragma comment (lib, "VektoriaMath_Debug64.lib")
#pragma comment (lib, "ApiUtils_Debug64.lib")
#pragma comment (lib, "ApiNullRenderer_Debug64.lib")
#pragma comment (lib, "ApiDirectX11Basic_Debug64.lib")
#pragma comment (lib, "ApiDirectInput08_Debug64.lib")
#pragma comment (lib, "ApiDirectX11FP_Debug64.lib")
#pragma comment (lib, "ApiOpenGL40_Debug64.lib")
#pragma comment (lib, "ApiNullSound_Debug64.lib")
#pragma comment (lib, "ApiDirectSound_Debug64.lib")
#else
#pragma comment (lib, "Vektoria_Release64.lib")
#pragma comment (lib, "VektoriaMath_Release64.lib")
#pragma comment (lib, "ApiUtils_Release64.lib")
#pragma comment (lib, "ApiNullRenderer_Release64.lib")
#pragma comment (lib, "ApiDirectX11Basic_Release64.lib")
#pragma comment (lib, "ApiDirectInput08_Release64.lib")
#pragma comment (lib, "ApiDirectX11FP_Release64.lib")
#pragma comment (lib, "ApiOpenGL40_Release64.lib")
#pragma comment (lib, "ApiNullSound_Release64.lib")
#pragma comment (lib, "ApiDirectSound_Release64.lib")
#endif
#else
#ifdef _DEBUG
#pragma comment (lib, "Vektoria_Debug.lib")
#pragma comment (lib, "VektoriaMath_Debug.lib")
#pragma comment (lib, "ApiUtils_Debug.lib")
#pragma comment (lib, "ApiNullRenderer_Debug.lib")
#pragma comment (lib, "ApiDirectX11Basic_Debug.lib")
#pragma comment (lib, "ApiDirectInput08_Debug.lib")
#pragma comment (lib, "ApiDirectX11FP_Debug.lib")
#pragma comment (lib, "ApiOpenGL40_Debug.lib")
#pragma comment (lib, "ApiNullSound_Debug.lib")
#pragma comment (lib, "ApiDirectSound_Debug.lib")
#else
#pragma comment (lib, "Vektoria_Release.lib")
#pragma comment (lib, "VektoriaMath_Release.lib")
#pragma comment (lib, "ApiUtils_Release.lib")
#pragma comment (lib, "ApiNullRenderer_Release.lib")
#pragma comment (lib, "ApiDirectX11Basic_Release.lib")
#pragma comment (lib, "ApiDirectInput08_Release.lib")
#pragma comment (lib, "ApiDirectX11FP_Release.lib")
#pragma comment (lib, "ApiOpenGL40_Release.lib")
#pragma comment (lib, "ApiNullSound_Release.lib")
#pragma comment (lib, "ApiDirectSound_Release.lib")
#endif
#endif




#include "Vektoria\Root.h"
#include "VektoriaMath\Util.h"
#include "LargeOfficeBuilding.h"
#include "VModelPowerLine.h"

using namespace Vektoria;


class CGame
{
public:
    CGame(void);
    ~CGame(void);

	void Init(HWND hwnd, CSplash * psplash);
	void Tick(float fTime, float fTimeDelta);
	void Fini();

	void WindowReSize(int iNewWidth, int iNewHeight); // WindowsReSize wird immer dann aufgerufen, wenn der Benutzer die Fenstergröße verändert hat

private:
	HWND m_hwnd;
	bool m_bReSized;
    // Hier ist Platz für Deine Vektoriaobjekte:
	CRoot m_zr;
	CFrame m_zf;
	CScene m_zs;
	CParallelLight m_zl;
	CViewport m_zvFront;
	CCamera m_zcFront;
	CPlacement m_zpCameraFront;
	CPlacement m_zpCameraSide;

	// Placements

	CPlacement m_zpAtomkraftwerk;
	CPlacement m_zpFundament;
	CPlacement m_zpKuehlturm1;
	CPlacement m_zpKuehlturm2;

	CPlacement m_zpReaktor1;
	CPlacement m_zpReaktor2;
	CPlacement m_zpReaktorTurm1;
	CPlacement m_zpReaktorTurm2;
	CPlacement m_zpReaktorKopf1;
	CPlacement m_zpReaktorKopf2;

	CPlacement m_zpKamin;

	CPlacement m_zpGebaeude1;
	CPlacement m_zpGebaeudeHaelfte11;
	CPlacement m_zpGebaeudeHaelfte12;

	CPlacement m_zpGebaeude2;
	CPlacement m_zpGebaeudeHaelfte21;
	CPlacement m_zpGebaeudeHaelfte22;

	CPlacement m_zpAbsperrung;
	CPlacement m_zpPfosten1;
	CPlacement m_zpPfosten2;
	CPlacement m_zpPfosten3;
	CPlacement m_zpPfosten4;
	CPlacement m_zpPfosten5;
	CPlacement m_zpPfosten6;
	CPlacement m_zpPfosten7;
	CPlacement m_zpPfosten8;
	CPlacement m_zpPfosten9;

	CPlacement m_zpHintenOR;
	CPlacement m_zpHintenUR;
	CPlacement m_zpHintenOL;
	CPlacement m_zpHintenUL;
	CPlacement m_zpLinksOH;
	CPlacement m_zpLinksUH;
	CPlacement m_zpLinksOV;
	CPlacement m_zpLinksUV;
	CPlacement m_zpRechtsOH;
	CPlacement m_zpRechtsUH;
	CPlacement m_zpRechtsOV;
	CPlacement m_zpRechtsUV;
	CPlacement m_zpVorneOR;
	CPlacement m_zpVorneUR;
	CPlacement m_zpVorneOL;
	CPlacement m_zpVorneUL;

	CPlacement m_zpDrehelement;
	CPlacement m_zpSchranke;

	//Geo-Objects

	CGeoWall m_zgFundament;
	CGeoWall m_zgKuehlturm;
	CGeoTube m_zgReaktorTurm;
	CGeoSphere m_zgReaktorKopf;
	CGeoTube m_zgKamin;
	CGeoWall m_zgPfosten;
	CGeoWall m_zgBalkenLang;
	CGeoWall m_zgBalkenKurz;
	CGeoCylinder m_zgDrehelement;
	CGeoWall m_zgSchranke;



	CLargeOfficeBuilding *Gebaeude = new CLargeOfficeBuilding(0.2f);
	VModelPowerLine *m_zTrasse1 = new VModelPowerLine();
	VModelPowerLine *m_zTrasse2 = new VModelPowerLine();



	CMaterial m_zmWhite;
	CMaterial m_zmGrey;
	CMaterial m_zmSchranke;
	CMaterial m_zmGreen;
	CMaterial m_zmHolz;

	CDeviceKeyboard m_zdk;
};


