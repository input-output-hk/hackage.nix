{
  "1.0.0" = {
    sha256 = "2998816165537fc9495a53b2ac24b247b7ec2815c6a8ff7b9d4b39320298fc17";
    revisions = {
      r0 = {
        nix = import ../hackage/stratosphere-mwaa-1.0.0-r0-7726066c00a5576e82195842b27ad9df41c1079251ad76821419ae26a977fcef.nix;
        revNum = 0;
        sha256 = "7726066c00a5576e82195842b27ad9df41c1079251ad76821419ae26a977fcef";
      };
      default = "r0";
    };
  };
  "1.0.1" = {
    sha256 = "9ddda5608f218d314c58200509c8028af588eeafe1ac4d0a60475754f4f27f7b";
    revisions = {
      r0 = {
        nix = import ../hackage/stratosphere-mwaa-1.0.1-r0-5ff2ac8ba645dc53f6190f1f282549aa13467d95e47b102fb8869cffa110f5d4.nix;
        revNum = 0;
        sha256 = "5ff2ac8ba645dc53f6190f1f282549aa13467d95e47b102fb8869cffa110f5d4";
      };
      default = "r0";
    };
  };
}