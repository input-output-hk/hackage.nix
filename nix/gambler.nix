{
  "0.0.0.0" = {
    sha256 = "26019744d4ac43e24f72a0d3942e090209b7d41a5920a01bd8329c83f86776ad";
    revisions = {
      r0 = {
        nix = import ../hackage/gambler-0.0.0.0-r0-32d04bce6473b6d956378c62d8e86a9c76919a948946cdec53be593328af638e.nix;
        revNum = 0;
        sha256 = "32d04bce6473b6d956378c62d8e86a9c76919a948946cdec53be593328af638e";
        };
      r1 = {
        nix = import ../hackage/gambler-0.0.0.0-r1-fc519756baa82ce0a8f6de6e83810d2b6139a517b69c612bd233de764562938b.nix;
        revNum = 1;
        sha256 = "fc519756baa82ce0a8f6de6e83810d2b6139a517b69c612bd233de764562938b";
        };
      default = "r1";
      };
    };
  "0.0.0.1" = {
    sha256 = "491362a7abb512155ff8e37d9b9b43750a03b553b295f70b8475e9e88177b359";
    revisions = {
      r0 = {
        nix = import ../hackage/gambler-0.0.0.1-r0-5924926e1a4e7c0b767ff076379b6cb77131b18e801a5eba2d1734b938c22431.nix;
        revNum = 0;
        sha256 = "5924926e1a4e7c0b767ff076379b6cb77131b18e801a5eba2d1734b938c22431";
        };
      default = "r0";
      };
    };
  }