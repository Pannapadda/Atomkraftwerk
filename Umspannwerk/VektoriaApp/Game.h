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

	// Placements -------------------------------------------------------------------------

	CPlacement m_zpUmspannwerk;
	CPlacement m_zpFundament;

	//Umspannmast

	CPlacement m_zpUmspannmast;
	CPlacement m_zpStaender;
	CPlacement m_zpQuerstange;
	CPlacement m_zpIsolatorLinks;
	CPlacement m_zpIsolatorMitte;
	CPlacement m_zpIsolatorRechts;
	CPlacement m_zpUmspannmastLinks;
	CPlacement m_zpStaenderLinks;
	CPlacement m_zpQuerstangeLinks;
	CPlacement m_zpIsolatorLinksLinks;
	CPlacement m_zpIsolatorMitteLinks;
	CPlacement m_zpIsolatorRechtsLinks;
	CPlacement m_zpUmspannmastRechts;
	CPlacement m_zpStaenderRechts;
	CPlacement m_zpQuerstangeRechts;
	CPlacement m_zpIsolatorLinksRechts;
	CPlacement m_zpIsolatorMitteRechts;
	CPlacement m_zpIsolatorRechtsRechts;
	CPlacement m_zpGenerator;
	CPlacement m_zpGeneratorKasten;
	CPlacement m_zpGIMitteLinks;
	CPlacement m_zpGIMitteRechts;
	CPlacement m_zpGILinksVorne;
	CPlacement m_zpGILinksHinten;
	CPlacement m_zpGIRechtsVorne;
	CPlacement m_zpGIRechtsHinten;
	CPlacement m_zpSteckaVorne;
	CPlacement m_zpSteckaHinten;
	CPlacement m_zpKugelVorne;
	CPlacement m_zpKugelHinten;
	CPlacement m_zpKugelMitteLinks;
	CPlacement m_zpKugelMitteRechts;
	CPlacement m_zpKugelLinksVorne;
	CPlacement m_zpKugelLinksHinten;
	CPlacement m_zpKugelRechtsVorne;
	CPlacement m_zpKugelRechtsHinten;
	CPlacement m_zpKabelMitteLinks;
	CPlacement m_zpKabelMitteRechts;
	CPlacement m_zpKabelLinksVorne;
	CPlacement m_zpKabelLinksHinten;
	CPlacement m_zpKabelRechtsVorne;
	CPlacement m_zpKabelRechtsHinten;




	//Geo-Objects --------------------------------------------------------------------------

	CGeoWall m_zgFundament;

	VModelPowerLine *m_zTrasse1 = new VModelPowerLine();
	VModelPowerLine *m_zTrasse2 = new VModelPowerLine();
	VModelPowerLine *m_zTrasse3 = new VModelPowerLine();

	CMaterial m_zmGreen;
	CMaterial m_zmGrey;

	CDeviceKeyboard m_zdk;

	CGeoCylinder m_zgStaender;
	CGeoWall m_zgQuerstange;
	CGeoWall m_zgIsolator;
	CGeoWall m_zgQuerstange2;
	CGeoWall m_zgGeneratorKasten;
	CGeoCylinder m_zgStecka;
	CGeoSphere m_zgKugel;
	CGeoCylinder m_zgKabelMitte;
	CGeoCylinder m_zgKabelSeite;

};