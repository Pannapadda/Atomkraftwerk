#include "StdAfx.h"
#include "Game.h"



CGame::CGame(void)
{
	// Hier eventuelle Vorinitialisierungen Deiner Vektoria-Objekte einf�gen:
}

CGame::~CGame(void)
{
	// Hier eventuelle Nachinitialisierungen Deiner Vektoria-Objekte einf�gen:
}

void CGame::Init(HWND hwnd, CSplash * psplash)
{
	m_hwnd = hwnd;
	m_bReSized = false;
	// Hier die Initialisierung Deiner Vektoria-Objekte einf�gen:
	m_zr.Init(psplash);
	m_zf.Init(hwnd);
	m_zcFront.Init();
	m_zvFront.Init(&m_zcFront, 0.0f, 0.0f, 1.0f, 1.0f);
	m_zl.Init(CHVector(1, 1, 2), CColor(1, 1, 1));

	//Initialisierung der Koerper


	//Initialisierung Fundament
	m_zgFundament.Init(10.0f, 0.3f, 10.0f, &m_zmGreen);
	//Initalisierung St�nder
	m_zgStaender.Init(0.05f, 0.05f, 1.5f, &m_zmGrey);
	//Initalisierung Querstange
	m_zgQuerstange.Init(2.0f, 0.1f, 0.1f, &m_zmGrey);
	//Initalisierung Isolator
	m_zgIsolator.InitTubeWave(1.2f, 4.0f, 0.2f, 0.5f, 0.7f, &m_zmGrey, 0.2f, true, true);
	//Initalisierung Querstange2
	m_zgQuerstange2.Init(0.1f, 0.1f, 2.0f, &m_zmGrey);
	//Initialisierung Trasssen
	m_zTrasse1->Init();
	m_zTrasse2->Init();
	m_zTrasse3->Init();
	//Initialisierung Generator
	m_zgGeneratorKasten.Init(2.5f, 1.9f, 3.3f, &m_zmGrey);
	//Initialisierung Stecka
	m_zgStecka.Init(0.03f, 0.03f, 1.0f, &m_zmGrey);
	//Initialisierung Kugel
	m_zgKugel.Init(0.05f, &m_zmGrey);
	//Initialisierung Kabel
	m_zgKabelMitte.Init(0.01f, 0.01f, 1.1f, &m_zmGrey);
	m_zgKabelSeite.Init(0.01f, 0.01f, 1.6f, &m_zmGrey);


	m_zmGrey.MakeTextureDiffuse("Textures\\grey_image.jpg");
	m_zmGreen.MakeTextureDiffuse("Textures\\green_image.jpg");

	m_zr.AddFrameHere(&m_zf);
	m_zf.AddViewport(&m_zvFront);
	m_zf.AddDeviceKeyboard(&m_zdk);
	m_zr.AddScene(&m_zs);
	m_zs.AddParallelLight(&m_zl);


	//Placements

	m_zs.AddPlacement(&m_zpCameraFront);
	m_zs.AddPlacement(&m_zpUmspannwerk);
	m_zpUmspannwerk.AddPlacement(&m_zpGenerator);

	m_zpGenerator.AddPlacement(&m_zpGeneratorKasten);
	m_zpGenerator.AddPlacement(&m_zpGIMitteLinks);
	m_zpGenerator.AddPlacement(&m_zpGIMitteRechts);
	m_zpGenerator.AddPlacement(&m_zpGILinksVorne);
	m_zpGenerator.AddPlacement(&m_zpGILinksHinten);
	m_zpGenerator.AddPlacement(&m_zpGIRechtsVorne);
	m_zpGenerator.AddPlacement(&m_zpGIRechtsHinten);
	m_zpGenerator.AddPlacement(&m_zpSteckaVorne);
	m_zpGenerator.AddPlacement(&m_zpSteckaHinten);
	m_zpGenerator.AddPlacement(&m_zpKugelHinten);
	m_zpGenerator.AddPlacement(&m_zpKugelVorne);
	m_zpGenerator.AddPlacement(&m_zpKugelMitteLinks);
	m_zpGenerator.AddPlacement(&m_zpKugelMitteRechts);
	m_zpGenerator.AddPlacement(&m_zpKugelLinksVorne);
	m_zpGenerator.AddPlacement(&m_zpKugelLinksHinten);
	m_zpGenerator.AddPlacement(&m_zpKugelRechtsVorne);
	m_zpGenerator.AddPlacement(&m_zpKugelRechtsHinten);
	m_zpGenerator.AddPlacement(&m_zpKabelMitteLinks);
	m_zpGenerator.AddPlacement(&m_zpKabelMitteRechts);
	m_zpGenerator.AddPlacement(&m_zpKabelLinksVorne);
	m_zpGenerator.AddPlacement(&m_zpKabelLinksHinten);
	m_zpGenerator.AddPlacement(&m_zpKabelRechtsVorne);
	m_zpGenerator.AddPlacement(&m_zpKabelRechtsHinten);


	m_zpUmspannwerk.AddPlacement(m_zTrasse1);
	m_zpUmspannwerk.AddPlacement(m_zTrasse2);
	m_zpUmspannwerk.AddPlacement(m_zTrasse3);
	m_zpUmspannwerk.AddPlacement(&m_zpFundament);
	m_zpUmspannwerk.AddPlacement(&m_zpUmspannmast);
	m_zpUmspannwerk.AddPlacement(&m_zpUmspannmastLinks);
	m_zpUmspannwerk.AddPlacement(&m_zpUmspannmastRechts);
	m_zpUmspannmast.AddPlacement(&m_zpStaender);
	m_zpUmspannmast.AddPlacement(&m_zpQuerstange);
	m_zpUmspannmast.AddPlacement(&m_zpIsolatorLinks);
	m_zpUmspannmast.AddPlacement(&m_zpIsolatorMitte);
	m_zpUmspannmast.AddPlacement(&m_zpIsolatorRechts);
	//Links
	m_zpUmspannmastLinks.AddPlacement(&m_zpStaenderLinks);
	m_zpUmspannmastLinks.AddPlacement(&m_zpQuerstangeLinks);
	m_zpUmspannmastLinks.AddPlacement(&m_zpIsolatorLinksLinks);
	m_zpUmspannmastLinks.AddPlacement(&m_zpIsolatorMitteLinks);
	m_zpUmspannmastLinks.AddPlacement(&m_zpIsolatorRechtsLinks);
	//Rechts
	m_zpUmspannmastRechts.AddPlacement(&m_zpStaenderRechts);
	m_zpUmspannmastRechts.AddPlacement(&m_zpQuerstangeRechts);
	m_zpUmspannmastRechts.AddPlacement(&m_zpIsolatorLinksRechts);
	m_zpUmspannmastRechts.AddPlacement(&m_zpIsolatorMitteRechts);
	m_zpUmspannmastRechts.AddPlacement(&m_zpIsolatorRechtsRechts);



	//Adding
	m_zpCameraFront.Translate(CHVector(1.0f, 2.0f, 15.0f));
	m_zpCameraFront.AddCamera(&m_zcFront);

	m_zpFundament.Translate(CHVector(-5.0f, 0.0f, -5.0f));
	m_zpFundament.AddGeo(&m_zgFundament);

	m_zpStaender.Translate(CHVector(0.0f, 0.3f, 0.0f));
	m_zpStaender.AddGeo(&m_zgStaender);

	m_zpQuerstange.Translate(CHVector(-1.0f, 1.8f, -0.05f));
	m_zpQuerstange.AddGeo(&m_zgQuerstange);

	m_zpIsolatorMitte.Scale(0.05);
	m_zpIsolatorMitte.TranslateDelta(CHVector(0.0f, 1.9f, 0.0f));
	m_zpIsolatorMitte.AddGeo(&m_zgIsolator);

	m_zpIsolatorLinks.Scale(0.05);
	m_zpIsolatorLinks.TranslateDelta(CHVector(-0.85f, 1.9f, 0.0f));
	m_zpIsolatorLinks.AddGeo(&m_zgIsolator);

	m_zpIsolatorRechts.Scale(0.05);
	m_zpIsolatorRechts.TranslateDelta(CHVector(0.85f, 1.9f, 0.0f));
	m_zpIsolatorRechts.AddGeo(&m_zgIsolator);

	m_zpUmspannmast.Translate(CHVector(0.0f, 0.0f, 2.5f));


	//Links

	m_zpStaenderLinks.Translate(CHVector(0.0f, 0.3f, 0.0f));
	m_zpStaenderLinks.AddGeo(&m_zgStaender);

	m_zpQuerstangeLinks.Translate(CHVector(-0.05f, 1.8f, -1.0f));
	m_zpQuerstangeLinks.AddGeo(&m_zgQuerstange2);

	m_zpIsolatorMitteLinks.Scale(0.05);
	m_zpIsolatorMitteLinks.TranslateDelta(CHVector(0.0f, 1.9f, 0.0f));
	m_zpIsolatorMitteLinks.AddGeo(&m_zgIsolator);

	m_zpIsolatorLinksLinks.Scale(0.05);
	m_zpIsolatorLinksLinks.TranslateDelta(CHVector(0.0f, 1.9f, -0.85f));
	m_zpIsolatorLinksLinks.AddGeo(&m_zgIsolator);

	m_zpIsolatorRechtsLinks.Scale(0.05);
	m_zpIsolatorRechtsLinks.TranslateDelta(CHVector(0.0f, 1.9f, 0.85f));
	m_zpIsolatorRechtsLinks.AddGeo(&m_zgIsolator);

	m_zpUmspannmastLinks.Translate(CHVector(-2.5f, 0.0f, 0.0f));

	//Rechts

	m_zpStaenderRechts.Translate(CHVector(0.0f, 0.3f, 0.0f));
	m_zpStaenderRechts.AddGeo(&m_zgStaender);

	m_zpQuerstangeRechts.Translate(CHVector(-0.05f, 1.8f, -1.0f));
	m_zpQuerstangeRechts.AddGeo(&m_zgQuerstange2);

	m_zpIsolatorMitteRechts.Scale(0.05);
	m_zpIsolatorMitteRechts.TranslateDelta(CHVector(0.0f, 1.9f, 0.0f));
	m_zpIsolatorMitteRechts.AddGeo(&m_zgIsolator);

	m_zpIsolatorLinksRechts.Scale(0.05);
	m_zpIsolatorLinksRechts.TranslateDelta(CHVector(0.0f, 1.9f, -0.85f));
	m_zpIsolatorLinksRechts.AddGeo(&m_zgIsolator);

	m_zpIsolatorRechtsRechts.Scale(0.05);
	m_zpIsolatorRechtsRechts.TranslateDelta(CHVector(0.0f, 1.9f, 0.85f));
	m_zpIsolatorRechtsRechts.AddGeo(&m_zgIsolator);

	m_zpUmspannmastRechts.Translate(CHVector(2.5f, 0.0f, 0.0f));

	//Trassen
	m_zTrasse1->Translate(CHVector(-4.0f, 0.35f, 0.0f));
	m_zTrasse2->Translate(4.0f, 0.35f, 0.0f);
	m_zTrasse3->RotateY(HALFPI);
	m_zTrasse3->TranslateDelta(0.0f, 0.35f, 4.0f);
	
	//Generator
	m_zpGeneratorKasten.Translate(CHVector(-1.3f, 0.0f, -1.6f));
	m_zpGeneratorKasten.AddGeo(&m_zgGeneratorKasten);

	//Generator-Isolatoren
	m_zpGIMitteLinks.Scale(0.05);
	m_zpGIMitteLinks.TranslateDelta(CHVector(-0.85f, 1.9f, 1.4f));
	m_zpGIMitteLinks.AddGeo(&m_zgIsolator);

	m_zpGIMitteRechts.Scale(0.05);
	m_zpGIMitteRechts.TranslateDelta(CHVector(0.85f, 1.9f, 1.4f));
	m_zpGIMitteRechts.AddGeo(&m_zgIsolator);

	m_zpGILinksVorne.Scale(0.05);
	m_zpGILinksVorne.TranslateDelta(CHVector(-0.85f, 1.9f, 0.85f));
	m_zpGILinksVorne.AddGeo(&m_zgIsolator);

	m_zpGILinksHinten.Scale(0.05);
	m_zpGILinksHinten.TranslateDelta(CHVector(-0.85f, 1.9f, -0.85f));
	m_zpGILinksHinten.AddGeo(&m_zgIsolator);

	m_zpGIRechtsVorne.Scale(0.05);
	m_zpGIRechtsVorne.TranslateDelta(CHVector(0.85f, 1.9f, 0.85f));
	m_zpGIRechtsVorne.AddGeo(&m_zgIsolator);

	m_zpGIRechtsHinten.Scale(0.05);
	m_zpGIRechtsHinten.TranslateDelta(CHVector(0.85f, 1.9f, -0.85f));
	m_zpGIRechtsHinten.AddGeo(&m_zgIsolator);

	//Generator-Stecka-Kugel
	m_zpSteckaVorne.Translate(CHVector(0.5f, 1.9f, 0.0f));
	m_zpSteckaVorne.AddGeo(&m_zgStecka);

	m_zpSteckaHinten.Translate(CHVector(-0.5f, 1.9f, 0.0f));
	m_zpSteckaHinten.AddGeo(&m_zgStecka);

	m_zpKugelVorne.Translate(CHVector(0.5f, 2.9f, 0.0f));
	m_zpKugelVorne.AddGeo(&m_zgKugel);

	m_zpKugelHinten.Translate(CHVector(-0.5f, 2.9f, 0.0f));
	m_zpKugelHinten.AddGeo(&m_zgKugel);

	//Generator-Kabel
	m_zpKabelMitteLinks.RotateX(HALFPI);
	m_zpKabelMitteLinks.TranslateDelta(CHVector(-0.85f, 2.0f, 1.4f));
	m_zpKabelMitteLinks.AddGeo(&m_zgKabelMitte);

	m_zpKabelMitteRechts.RotateX(HALFPI);
	m_zpKabelMitteRechts.TranslateDelta(CHVector(0.85f, 2.0f, 1.4f));
	m_zpKabelMitteRechts.AddGeo(&m_zgKabelMitte);

	m_zpKabelLinksVorne.RotateZ(HALFPI);
	m_zpKabelLinksVorne.TranslateDelta(CHVector(-0.85f, 2.0f, 0.85f));
	m_zpKabelLinksVorne.AddGeo(&m_zgKabelSeite);

	m_zpKabelLinksHinten.RotateZ(HALFPI);
	m_zpKabelLinksHinten.TranslateDelta(CHVector(-0.85f, 2.0f, -0.85f));
	m_zpKabelLinksHinten.AddGeo(&m_zgKabelSeite);

	m_zpKabelRechtsVorne.RotateZ(-HALFPI);
	m_zpKabelRechtsVorne.TranslateDelta(CHVector(0.85f, 2.0f, 0.85f));
	m_zpKabelRechtsVorne.AddGeo(&m_zgKabelSeite);

	m_zpKabelRechtsHinten.RotateZ(-HALFPI);
	m_zpKabelRechtsHinten.TranslateDelta(CHVector(0.85f, 2.0f, -0.85f));
	m_zpKabelRechtsHinten.AddGeo(&m_zgKabelSeite);
}


void CGame::Tick(float fTime, float fTimeDelta)
{
	// Hier die Echtzeit-Ver�nderungen einf�gen:
	m_zdk.PlaceWASD(m_zpCameraFront, fTimeDelta);
	m_zdk.PlaceWASD(m_zpCameraSide, fTimeDelta);
	m_zdk.SetWASDTranslationSensitivity(4.0);
	m_zdk.SetWASDRotationSensitivity(2.0);
	m_zr.Tick(fTimeDelta);
}

void CGame::Fini()
{
	// Hier die Finalisierung Deiner Vektoria-Objekte einf�gen:
}

void CGame::WindowReSize(int iNewWidth, int iNewHeight)
{
	// Windows ReSize wird immer automatisch aufgerufen, wenn die Fenstergr��e ver�ndert wurde.
	// Hier kannst Du dann die Aufl�sung des Viewports neu einstellen:

}

