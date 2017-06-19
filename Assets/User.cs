using UnityEngine;
using System.Collections;
using System.Collections.Generic;


namespace Game
{


	public class User : MonoBehaviour
	{


		#if LIBRARY_IS_AVAILABLE
		public string message = "LIBRARY_IS_AVAILABLE";
		#endif
	}
}
