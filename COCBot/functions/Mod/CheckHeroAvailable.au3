Func LiveRoyalFilter()

		If $LBAQFilter = 1 And $ArcherQueenAvailable = 0 Then ;Checking for aq if aq filter enabled.
			SetLog("Live Base Hero Healing Mode Enabled", $COLOR_BLUE)
			$LBHeroFilter = 1
		ElseIf $LBBKFilter = 1  And $BarbarianKingAvailable = 0 Then ;Checking for bk if bk filter enabled.
			SetLog("Live Base Hero Healing Mode Enabled", $COLOR_BLUE)
			$LBHeroFilter = 1
		Else
			SetLog("Live Base Normal Mode Enabled", $COLOR_BLUE)
			$LBHeroFilter = 0
		EndIf

;~		If $LBHeroFilter = 0 Then
;~			RevertRoyalFilter()
;~		EndIf

		If $LBHeroFilter = 1 Then
			;Save regular search modes.
			$LBsave[0] = $iMaxTH[$LB]
			$LBsave[1] = $iCmbMeetGE[$LB]
			$LBsave[2] = $iChkMeetDE[$LB]
			$LBsave[3] = $iChkMeetTrophy[$LB]
			$LBsave[4] = $iChkMeetTH[$LB]
			$LBsave[5] = $iChkMeetTHO[$LB]
			$LBsave[6] = $iChkWeakBase[$LB]
			$LBsave[7] = $iChkMeetOne[$LB]
			$LBsave[8] = $iEnableAfterCount[$LB]
			$LBsave[9] = $iMinGold[$LB]
			$LBsave[10] = $iMinElixir[$LB]
			$LBsave[11] = $iMinGoldPlusElixir[$LB]
			$LBsave[12] = $iMinDark[$LB]
			$LBsave[13] = $iMinTrophy[$LB]
			$LBsave[14] = $iCmbTH[$LB]
			$LBsave[15] = $iCmbWeakMortar[$LB]
			$LBsave[16] = $iCmbWeakWizTower[$LB]

			;Enable hero healing search mode.
			$iMaxTH[$LB] =				$iMaxTHHero
			$iCmbMeetGE[$LB] = 			$iCmbMeetGEHero
			$iChkMeetDE[$LB] = 			$iChkMeetDEHero
			$iChkMeetTrophy[$LB] = 		$iChkMeetTrophyHero
			$iChkMeetTH[$LB] = 			$iChkMeetTHHero
			$iChkMeetTHO[$LB] = 		$iChkMeetTHOHero
			$iChkWeakBase[$LB] = 		$iChkWeakBaseHero
			$iChkMeetOne[$LB] = 		$iChkMeetOneHero
			$iMinGold[$LB] = 			$iMinGoldHero
			$iMinElixir[$LB] = 			$iMinElixirHero
			$iMinGoldPlusElixir[$LB] = 	$iMinGoldPlusElixirHero
			$iMinDark[$LB] = 			$iMinDarkHero
			$iMinTrophy[$LB] = 			$iMinTrophyHero
			$iCmbTH[$LB] = 				$iCmbTHHero
			$iCmbWeakMortar[$LB] = 		$iCmbWeakMortarHero
			$iCmbWeakWizTower[$LB] = 	$iCmbWeakWizTowerHero
		EndIf
EndFunc	;===>LiveRoyalFilter

Func RevertRoyalFilter()
			$LBHeroFilter = 0
			$iMaxTH[$LB] = 				$LBsave[0]
			$iCmbMeetGE[$LB] = 			$LBsave[1]
			$iChkMeetDE[$LB] = 			$LBsave[2]
			$iChkMeetTrophy[$LB] = 		$LBsave[3]
			$iChkMeetTH[$LB] = 			$LBsave[4]
			$iChkMeetTHO[$LB] = 		$LBsave[5]
			$iChkWeakBase[$LB] =		$LBsave[6]
			$iChkMeetOne[$LB] = 		$LBsave[7]
			$iEnableAfterCount[$LB] = 	$LBsave[8]
			$iMinGold[$LB] = 			$LBsave[9]
			$iMinElixir[$LB] = 			$LBsave[10]
			$iMinGoldPlusElixir[$LB] = 	$LBsave[11]
			$iMinDark[$LB] = 			$LBsave[12]
			$iMinTrophy[$LB] = 			$LBsave[13]
			$iCmbTH[$LB] = 				$LBsave[14]
			$iCmbWeakMortar[$LB] = 		$LBsave[15]
			$iCmbWeakWizTower[$LB] = 	$LBsave[16]
EndFunc