using UnityEngine;

public class OpenURL : MonoBehaviour {
	public string websteAddress;

	public void OpenURLOnClick(){
		Application.OpenURL(websteAddress);
	}

}
