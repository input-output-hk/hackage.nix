{
  "0.1.0.0" = {
    sha256 = "e3f1cf82cb62b49cc867029f281a44ac96e6892ba0389f012ae7db8f9dba9d46";
    revisions = {
      r0 = {
        nix = import ../hackage/aterm-0.1.0.0-r0-7a478100f2235db138f07edbe9babf3ae122b685c4caf0261691317e6455e534.nix;
        revNum = 0;
        sha256 = "7a478100f2235db138f07edbe9babf3ae122b685c4caf0261691317e6455e534";
      };
      default = "r0";
    };
  };
  "0.1.0.1" = {
    sha256 = "706ae520b6356ac41957c43670876383c8533d23cbbdc8b2c71c999f63944a09";
    revisions = {
      r0 = {
        nix = import ../hackage/aterm-0.1.0.1-r0-145722772d9443fe4c124514288bb11cf8780034fd5188390c56526ff983ba43.nix;
        revNum = 0;
        sha256 = "145722772d9443fe4c124514288bb11cf8780034fd5188390c56526ff983ba43";
      };
      default = "r0";
    };
  };
  "0.1.0.2" = {
    sha256 = "698c22445f957fbdc557c87fee34de456fe7ac9bace6385fd684441f84b215b6";
    revisions = {
      r0 = {
        nix = import ../hackage/aterm-0.1.0.2-r0-b3a1cbaf126364dabd3e29279060696ddcc21abd655051cde1cfcd67e890b56c.nix;
        revNum = 0;
        sha256 = "b3a1cbaf126364dabd3e29279060696ddcc21abd655051cde1cfcd67e890b56c";
      };
      r1 = {
        nix = import ../hackage/aterm-0.1.0.2-r1-b73978fd9270eb90910c0d36d6ae59b46d0adc031d6a24fc007eb8938699066e.nix;
        revNum = 1;
        sha256 = "b73978fd9270eb90910c0d36d6ae59b46d0adc031d6a24fc007eb8938699066e";
      };
      default = "r1";
    };
  };
}