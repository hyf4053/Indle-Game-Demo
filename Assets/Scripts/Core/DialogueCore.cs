using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using Ink.Runtime;
using UnityEngine.UI;
using TMPro;

public class DialogueCore : MonoBehaviour {
	[SerializeField]
	private TextAsset inkJSONAsset;
	private Story story;
	[SerializeField]
	private Canvas canvas;
	// UI Prefabs
	[SerializeField]
	private TextMeshProUGUI textmeshPrefab;
	[SerializeField]
	private TextMeshProUGUI charaName;
	[SerializeField]
	private Button buttonPrefab;

	public Animator dialogueBoxAnimator;
	public void StartStory(){
		story = new Story(inkJSONAsset.text);
		Debug.Log(story.variablesState);
		dialogueBoxAnimator.SetBool("isOpen",true);
		SetWord();
	}

	public void ClickOnContinue(){
		RefreshUI();
	}
	void RefreshUI(){
		textmeshPrefab.text = "";
	}
	void SetWord(){
		while(story.canContinue){
			textmeshPrefab.text = story.Continue();
			charaName.text = story.currentTags[0];
			Debug.Log(story.currentTags[0]);
		}

		if(story.currentChoices.Count > 0){
			for(int i = 0; i< story.currentChoices.Count;i++){
				Choice choice = story.currentChoices [i];
			}

		}
		//dialogueBoxAnimator.SetBool("isOpen",false);
	}


}
