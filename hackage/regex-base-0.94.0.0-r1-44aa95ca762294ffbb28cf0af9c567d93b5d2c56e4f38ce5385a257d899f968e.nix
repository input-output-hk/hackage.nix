{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = { name = "regex-base"; version = "0.94.0.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2006, Christopher Kuklewicz";
      maintainer = "hvr@gnu.org";
      author = "Christopher Kuklewicz";
      homepage = "https://wiki.haskell.org/Regular_expressions";
      url = "";
      synopsis = "Common \"Text.Regex.*\" API for Regex matching";
      description = "This package doesn't provide the ability to do regex matching, but instead provides the type-classes that constitute the abstract API that is implemented by @regex-*@ backends such as\n\n* <//hackage.haskell.org/package/regex-posix regex-posix>\n\n* <//hackage.haskell.org/package/regex-parsec regex-parsec>\n\n* <//hackage.haskell.org/package/regex-dfa regex-dfa>\n\n* <//hackage.haskell.org/package/regex-tdfa regex-tdfa>\n\n* <//hackage.haskell.org/package/regex-pcre regex-pcre>\n\nSee also <https://wiki.haskell.org/Regular_expressions> for more information.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = ([
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          ] ++ (pkgs.lib).optionals (compiler.isGhc && (compiler.version).ge "7.4") [
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          ]) ++ (pkgs.lib).optional (!(compiler.isGhc && (compiler.version).ge "8")) (hsPkgs."fail" or ((hsPkgs.pkgs-errors).buildDepError "fail"));
        buildable = true;
        };
      };
    }