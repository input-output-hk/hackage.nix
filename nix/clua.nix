{
  "0.1" = {
    sha256 = "3e1ae33b340777028d9c3a826186f10f61b063611c8f79f045ef3aa9bd4ae42c";
    revisions = {
      r0 = {
        nix = import ../hackage/clua-0.1-r0-3534a3b870c1837589af90ad0bb405436ef1e0c622a5c7e523a139e11075290c.nix;
        revNum = 0;
        sha256 = "3534a3b870c1837589af90ad0bb405436ef1e0c622a5c7e523a139e11075290c";
      };
      default = "r0";
    };
  };
  "0.2" = {
    sha256 = "597e3a4acf5917005b6e0c89581fc57f362c59bc2537bb11d1c73c34f6e47d8e";
    revisions = {
      r0 = {
        nix = import ../hackage/clua-0.2-r0-c47959ded670bb49573f8c9ef5688503422cb34f1a35589827fcea237074fd12.nix;
        revNum = 0;
        sha256 = "c47959ded670bb49573f8c9ef5688503422cb34f1a35589827fcea237074fd12";
      };
      default = "r0";
    };
  };
  "0.3" = {
    sha256 = "7b0fbab3f4ff823243e6a2f9a88ef9cf90385fb12104e50eefc8d9b4b4bcf077";
    revisions = {
      r0 = {
        nix = import ../hackage/clua-0.3-r0-77e989411cbdfde37fdad07a3576210a3dbd02c35d0cf724383a89e2ace6f97a.nix;
        revNum = 0;
        sha256 = "77e989411cbdfde37fdad07a3576210a3dbd02c35d0cf724383a89e2ace6f97a";
      };
      default = "r0";
    };
  };
}