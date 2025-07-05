// Copyright Epic Games, Inc. All Rights Reserved.

#include "SDKGameMode.h"
#include "SDKCharacter.h"
#include "UObject/ConstructorHelpers.h"

ASDKGameMode::ASDKGameMode()
{
	// set default pawn class to our Blueprinted character
	static ConstructorHelpers::FClassFinder<APawn> PlayerPawnBPClass(TEXT("/Game/ThirdPerson/Blueprints/BP_ThirdPersonCharacter"));
	if (PlayerPawnBPClass.Class != NULL)
	{
		DefaultPawnClass = PlayerPawnBPClass.Class;
	}
}
