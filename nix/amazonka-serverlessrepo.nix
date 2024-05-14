{
  "1.6.0" = {
    sha256 = "08ad482c87872019e5e757fd74d5990ff6923e298ca9292e1f83511de5b18bee";
    revisions = {
      r0 = {
        nix = import ../hackage/amazonka-serverlessrepo-1.6.0-r0-b5e80f94a4527251e40b6e4c3f3080a83cfc84932eeca13144e9ff4bee0670fa.nix;
        revNum = 0;
        sha256 = "b5e80f94a4527251e40b6e4c3f3080a83cfc84932eeca13144e9ff4bee0670fa";
      };
      r1 = {
        nix = import ../hackage/amazonka-serverlessrepo-1.6.0-r1-22a770b06361a48161b363f32ee06a4311752254565097e3b6e5f2866040dff4.nix;
        revNum = 1;
        sha256 = "22a770b06361a48161b363f32ee06a4311752254565097e3b6e5f2866040dff4";
      };
      default = "r1";
    };
  };
  "1.6.1" = {
    sha256 = "778f42d7f5f452197a22ae1189b18a2becf8e95b8d66daf1be7e66bd38224c8f";
    revisions = {
      r0 = {
        nix = import ../hackage/amazonka-serverlessrepo-1.6.1-r0-784a4749651672bfaca710435aa37ab7208383d96a9ecee6260f0cba92ca0ab8.nix;
        revNum = 0;
        sha256 = "784a4749651672bfaca710435aa37ab7208383d96a9ecee6260f0cba92ca0ab8";
      };
      r1 = {
        nix = import ../hackage/amazonka-serverlessrepo-1.6.1-r1-a2003371071df6888ddc427da066de51d6345893399cfa60520c55d3b914b650.nix;
        revNum = 1;
        sha256 = "a2003371071df6888ddc427da066de51d6345893399cfa60520c55d3b914b650";
      };
      default = "r1";
    };
  };
  "2.0" = {
    sha256 = "3263e7a006e6e3f2b403c8aa2c13d9ed48717abb225348407ee9d74e16f1ceb6";
    revisions = {
      r0 = {
        nix = import ../hackage/amazonka-serverlessrepo-2.0-r0-fb49197d5eb729debc69e6e56aca54bf0c7c967ba37f311222aeab61ebb811b4.nix;
        revNum = 0;
        sha256 = "fb49197d5eb729debc69e6e56aca54bf0c7c967ba37f311222aeab61ebb811b4";
      };
      r1 = {
        nix = import ../hackage/amazonka-serverlessrepo-2.0-r1-21bf7118a8dd507b71a19346eb69dcc6316b91ca57720bfc90692f632c96b0ae.nix;
        revNum = 1;
        sha256 = "21bf7118a8dd507b71a19346eb69dcc6316b91ca57720bfc90692f632c96b0ae";
      };
      default = "r1";
    };
  };
}