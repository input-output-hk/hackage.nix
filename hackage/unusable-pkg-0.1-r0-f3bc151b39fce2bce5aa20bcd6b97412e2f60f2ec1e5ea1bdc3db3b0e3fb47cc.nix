{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = { name = "unusable-pkg"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Yuriy Iskra ";
      author = "Yuriy Iskra <iskra.yw@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "Utility construction of the graph depending unusable packages.";
      description = "Utility construction of the graph (/dot/ format) dependencies unusable packets\nfrom the output of /stderr ghc -v/.\n\nUsage(tested only /Ubuntu/):\n\n@#!\\/bin\\/bash\n\nghc -v 2>&1 | unusablepkg | tred | dot -Tpdf > unusable.pdf\n\n#evince unusable.pdf@";
      buildType = "Simple";
    };
    components = {
      exes = {
        "unusablepkg" = {
          depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
          buildable = true;
        };
      };
    };
  }