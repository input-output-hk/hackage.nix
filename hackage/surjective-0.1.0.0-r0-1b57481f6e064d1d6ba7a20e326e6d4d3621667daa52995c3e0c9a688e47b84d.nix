{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "surjective";
        version = "0.1.0.0";
      };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "gelisam+github@gmail.com";
      author = "Samuel Gélineau";
      homepage = "https://github.com/gelisam/surjective";
      url = "";
      synopsis = "An output coverage checker";
      description = "Check that your parsers cover all the cases.";
      buildType = "Simple";
    };
    components = {
      "surjective" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.lens)
          (hsPkgs.mtl)
          (hsPkgs.template-haskell)
        ];
      };
    };
  }