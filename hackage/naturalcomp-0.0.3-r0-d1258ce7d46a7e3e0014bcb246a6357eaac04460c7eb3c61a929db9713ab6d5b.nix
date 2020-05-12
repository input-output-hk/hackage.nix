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
    flags = { filepath = false; unicode-collation = false; };
    package = {
      specVersion = "1.8";
      identifier = { name = "naturalcomp"; version = "0.0.3"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Hironao Komatsu <hirkmt@gmail.com>";
      author = "Hironao Komatsu";
      homepage = "not yet available";
      url = "";
      synopsis = "Natural-order string comparison";
      description = "Natural order string comparison is needed when e.g. one wants\nto compare file names or strings of software version.  It's\naimed to be compatible to glibc's strverscmp() function.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = ([
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
          ] ++ (pkgs.lib).optional (flags.filepath) (hsPkgs."system-filepath" or (errorHandler.buildDepError "system-filepath"))) ++ (pkgs.lib).optional (flags.unicode-collation) (hsPkgs."rfc5051" or (errorHandler.buildDepError "rfc5051"));
        buildable = true;
        };
      };
    }