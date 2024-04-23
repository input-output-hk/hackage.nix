{
  "1.0" = {
    sha256 = "0775755444042169f949474f8931bbf2a88b5cba475d190aacad9af0213fde5e";
    revisions = {
      r0 = {
        nix = import ../hackage/quickcheck-with-counterexamples-1.0-r0-3e04986523807d7b7558fcd49d486a22129e1d77ebe6581d3035ce28579b867c.nix;
        revNum = 0;
        sha256 = "3e04986523807d7b7558fcd49d486a22129e1d77ebe6581d3035ce28579b867c";
      };
      r1 = {
        nix = import ../hackage/quickcheck-with-counterexamples-1.0-r1-41b4eed01e7f36fb18f5e5877899fcfb3b2f6ac731f4f2bb7f9b085f45034181.nix;
        revNum = 1;
        sha256 = "41b4eed01e7f36fb18f5e5877899fcfb3b2f6ac731f4f2bb7f9b085f45034181";
      };
      r2 = {
        nix = import ../hackage/quickcheck-with-counterexamples-1.0-r2-0baa75300aac7cda92cdd93d5e24f7c83bd86ef1314caa582b5b5218731a7094.nix;
        revNum = 2;
        sha256 = "0baa75300aac7cda92cdd93d5e24f7c83bd86ef1314caa582b5b5218731a7094";
      };
      r3 = {
        nix = import ../hackage/quickcheck-with-counterexamples-1.0-r3-e86f17bffaf0d7909be7b79aed021931e806738d44c76e883f27f5fe2e8fe773.nix;
        revNum = 3;
        sha256 = "e86f17bffaf0d7909be7b79aed021931e806738d44c76e883f27f5fe2e8fe773";
      };
      default = "r3";
    };
  };
  "1.1" = {
    sha256 = "cd859e79a63c04007cd6444a0e5f67ae96282912e59bf39614bab1f450ca768f";
    revisions = {
      r0 = {
        nix = import ../hackage/quickcheck-with-counterexamples-1.1-r0-14173d181172e6df51b617404945121fcf8c94ead238056efd9322648c4cff21.nix;
        revNum = 0;
        sha256 = "14173d181172e6df51b617404945121fcf8c94ead238056efd9322648c4cff21";
      };
      default = "r0";
    };
  };
  "1.2" = {
    sha256 = "ef9bccf5a70c421afca3c120f103569a82edb010c5142784e22c950cf87f116a";
    revisions = {
      r0 = {
        nix = import ../hackage/quickcheck-with-counterexamples-1.2-r0-d322d79008602df26f5eb4e1379e5b58bf1a92604df8601e71e200cfc3e847a3.nix;
        revNum = 0;
        sha256 = "d322d79008602df26f5eb4e1379e5b58bf1a92604df8601e71e200cfc3e847a3";
      };
      default = "r0";
    };
  };
}