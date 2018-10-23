{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = {
        name = "dependent-sum-template";
        version = "0.0.0.6";
      };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "Ryan Trinkle <ryan.trinkle@obsidian.systems>";
      author = "James Cook <mokus@deepbondi.net>";
      homepage = "/dev/null";
      url = "";
      synopsis = "Template Haskell code to generate instances of classes in dependent-sum package";
      description = "Template Haskell code to generate instances of classes in dependent-sum package, such as 'GEq' and 'GCompare'.";
      buildType = "Simple";
    };
    components = {
      "dependent-sum-template" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.dependent-sum)
          (hsPkgs.template-haskell)
          (hsPkgs.th-extras)
        ];
      };
      tests = {
        "test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.dependent-sum)
            (hsPkgs.dependent-sum-template)
          ];
        };
      };
    };
  }