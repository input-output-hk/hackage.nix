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
      specVersion = "1.8";
      identifier = { name = "Pathfinder"; version = "0.4.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "giorgidze@gmail.com";
      author = "George Giorgidze and Nils Schweinsberg";
      homepage = "";
      url = "";
      synopsis = "Relational optimiser and code generator";
      description = "The library provides FFI bindings to the Pathfinder relational optimiser and\ncode generator. Specifically, the provided functions allow for\n\n* optimisation of table algebra (a variant of relational algebra) expressions\n\n* and compilation of table algebra expressions into SQL:1999 queries\n\nMore information about Pathfinder is available from the following web page:\n\n* <http://www-db.informatik.uni-tuebingen.de/research/pathfinder>";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          ];
        libs = [ (pkgs."xml2" or (errorHandler.sysDepError "xml2")) ];
        buildable = true;
        };
      };
    }