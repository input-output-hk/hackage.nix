{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.18";
      identifier = { name = "record-dot-preprocessor"; version = "0.1.2"; };
      license = "BSD-3-Clause";
      copyright = "Neil Mitchell 2018";
      maintainer = "Neil Mitchell <ndmitchell@gmail.com>";
      author = "Neil Mitchell <ndmitchell@gmail.com>";
      homepage = "https://github.com/ndmitchell/record-dot-preprocessor#readme";
      url = "";
      synopsis = "Preprocessor to allow record.field syntax";
      description = "In almost every programming language @a.b@ will get the @b@ field from the @a@ data type, and many different data types can have a @b@ field.\nThe reason this feature is ubiquitous is because it's /useful/.\nThe @record-dot-preprocessor@ brings this feature to Haskell - see the README for full details.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "record-dot-preprocessor" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."extra" or ((hsPkgs.pkgs-errors).buildDepError "extra"))
            ];
          buildable = true;
          };
        };
      };
    }