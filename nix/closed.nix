{
  "0.1.0" = {
    sha256 = "044e7329d8ce913c4eef07e5d3a02832ff5b391a7c2224b9ed5ebb2e0ad20775";
    revisions = {
      r0 = {
        nix = import ../hackage/closed-0.1.0-r0-23777f91ce7f5c6c75d11f168dbaae6f4caada6d16dcc5b6f19b4af8e2da797b.nix;
        revNum = 0;
        sha256 = "23777f91ce7f5c6c75d11f168dbaae6f4caada6d16dcc5b6f19b4af8e2da797b";
        };
      r1 = {
        nix = import ../hackage/closed-0.1.0-r1-c6f57f2640fdad0829888edde21710da4708d294224271e6e8583333b7bbe672.nix;
        revNum = 1;
        sha256 = "c6f57f2640fdad0829888edde21710da4708d294224271e6e8583333b7bbe672";
        };
      default = "r1";
      };
    };
  "0.2.0" = {
    sha256 = "7a301c6c543ae60354b737c56c2259dfc9e01ddf9eee452e4469c6262c53c21c";
    revisions = {
      r0 = {
        nix = import ../hackage/closed-0.2.0-r0-22a7e51970c17484698867f502fc23a8ac06e98a0e054289219458c2a79f3e76.nix;
        revNum = 0;
        sha256 = "22a7e51970c17484698867f502fc23a8ac06e98a0e054289219458c2a79f3e76";
        };
      r1 = {
        nix = import ../hackage/closed-0.2.0-r1-49898d29a57801e435c357a466cd85cc373bd6049e4849807ec07f0a6c2c8f58.nix;
        revNum = 1;
        sha256 = "49898d29a57801e435c357a466cd85cc373bd6049e4849807ec07f0a6c2c8f58";
        };
      default = "r1";
      };
    };
  "0.2.0.1" = {
    sha256 = "564334f7c6d0fcc06daade2ddafc15210bcdf9717b875da7ba2a1fbb655be4b4";
    revisions = {
      r0 = {
        nix = import ../hackage/closed-0.2.0.1-r0-5c0203f70b66b3b59c37c4ecc223949bcc3918050d4aa6efe9e5bc3bd3e48dda.nix;
        revNum = 0;
        sha256 = "5c0203f70b66b3b59c37c4ecc223949bcc3918050d4aa6efe9e5bc3bd3e48dda";
        };
      default = "r0";
      };
    };
  "0.2.0.2" = {
    sha256 = "b0fb446d007819d05465afa84ade00f22b8856cd970ab85a040a1decd51a0736";
    revisions = {
      r0 = {
        nix = import ../hackage/closed-0.2.0.2-r0-0e53502af98670f8364f72cbec762c8b8918f435ae3a477808e37a67da4e529d.nix;
        revNum = 0;
        sha256 = "0e53502af98670f8364f72cbec762c8b8918f435ae3a477808e37a67da4e529d";
        };
      default = "r0";
      };
    };
  }