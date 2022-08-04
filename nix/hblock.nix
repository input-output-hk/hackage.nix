{
  "0.1.0.0" = {
    sha256 = "2466fd78d83de8832c73f191aeea0f8a25d0c95f42f8456befd360d0f6ea17ac";
    revisions = {
      r0 = {
        nix = import ../hackage/hblock-0.1.0.0-r0-a4f387a1001d2cb81fc525de940b98a9b3febd9f46afff40e28d2e1cb9a4d327.nix;
        revNum = 0;
        sha256 = "a4f387a1001d2cb81fc525de940b98a9b3febd9f46afff40e28d2e1cb9a4d327";
        };
      default = "r0";
      };
    };
  "0.1.0.1" = {
    sha256 = "3a2cf48c3bbb1fd657bfb937604ad75e9b07dfbbc81c3850b1d986ae9701e9d9";
    revisions = {
      r0 = {
        nix = import ../hackage/hblock-0.1.0.1-r0-1ea06f6eb20f59246befbcfa455909c8c370a63669d9cafed01e29b43a556b47.nix;
        revNum = 0;
        sha256 = "1ea06f6eb20f59246befbcfa455909c8c370a63669d9cafed01e29b43a556b47";
        };
      default = "r0";
      };
    };
  "0.1.0.2" = {
    sha256 = "7bf0dc5ef70b033464462e741d5cb8c5b1f6c91436dee178bd4c8e1c0591103d";
    revisions = {
      r0 = {
        nix = import ../hackage/hblock-0.1.0.2-r0-542cd29118b78d41b57a4ce54ac9194bd076c230304b2da6dde783d6a3fa0055.nix;
        revNum = 0;
        sha256 = "542cd29118b78d41b57a4ce54ac9194bd076c230304b2da6dde783d6a3fa0055";
        };
      r1 = {
        nix = import ../hackage/hblock-0.1.0.2-r1-0182ceac5536afe15ee507e30953ff97f890facf3f15f2766f74f6312036eca6.nix;
        revNum = 1;
        sha256 = "0182ceac5536afe15ee507e30953ff97f890facf3f15f2766f74f6312036eca6";
        };
      default = "r1";
      };
    };
  }