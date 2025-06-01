{
  "0.1" = {
    sha256 = "64f74819b808e5251ae261b0c77e8b704461f1933b965f79e4b07eea5048feae";
    revisions = {
      r0 = {
        nix = import ../hackage/debruijn-0.1-r0-2a5f6c05f174b7356ddf40436936c3bf23fa2cd13e5569c6b2c0925a042a2e36.nix;
        revNum = 0;
        sha256 = "2a5f6c05f174b7356ddf40436936c3bf23fa2cd13e5569c6b2c0925a042a2e36";
      };
      default = "r0";
    };
  };
  "0.2" = {
    sha256 = "e2dab20fc880a1b6ee1e0d8fa7f74e1771b51f13bbec0765f3bf182a2be54bc8";
    revisions = {
      r0 = {
        nix = import ../hackage/debruijn-0.2-r0-d25acc73e743a3199c49971b33e9ab7cb804a1cb9f8ae22c9cde0ab757b898d9.nix;
        revNum = 0;
        sha256 = "d25acc73e743a3199c49971b33e9ab7cb804a1cb9f8ae22c9cde0ab757b898d9";
      };
      default = "r0";
    };
  };
  "0.3" = {
    sha256 = "c9ff2f81a8052936d44f8e580183b3b1322ae32c91422afdf98af1440c309c7b";
    revisions = {
      r0 = {
        nix = import ../hackage/debruijn-0.3-r0-1fd6c63d332289bb9090d68106ef92d779cd7c72480c3b16cba2025cc1bc73ef.nix;
        revNum = 0;
        sha256 = "1fd6c63d332289bb9090d68106ef92d779cd7c72480c3b16cba2025cc1bc73ef";
      };
      r1 = {
        nix = import ../hackage/debruijn-0.3-r1-f2839653597ca745c2995b0a1c5f424cf68787077edac700367daab8efe8c386.nix;
        revNum = 1;
        sha256 = "f2839653597ca745c2995b0a1c5f424cf68787077edac700367daab8efe8c386";
      };
      default = "r1";
    };
  };
  "0.3.1" = {
    sha256 = "af69992821661361e5462b7a53c4e14961293019dcaf0662360e89d9facc111e";
    revisions = {
      r0 = {
        nix = import ../hackage/debruijn-0.3.1-r0-d47a75af3ff779e908d8ed07864e498f209049623aee64da89d58e0b3d08f219.nix;
        revNum = 0;
        sha256 = "d47a75af3ff779e908d8ed07864e498f209049623aee64da89d58e0b3d08f219";
      };
      default = "r0";
    };
  };
}