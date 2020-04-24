{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { pkg-config = true; };
    package = {
      specVersion = "1.12";
      identifier = { name = "regex-pcre"; version = "0.95.0.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2006, Christopher Kuklewicz";
      maintainer = "hvr@gnu.org";
      author = "Christopher Kuklewicz";
      homepage = "";
      url = "";
      synopsis = "PCRE Backend for \"Text.Regex\" (regex-base)";
      description = "This package provides a <http://pcre.org/ PCRE> backend for the <//hackage.haskell.org/package/regex-base regex-base> API.\n\nSee also <https://wiki.haskell.org/Regular_expressions> for more information.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."regex-base" or ((hsPkgs.pkgs-errors).buildDepError "regex-base"))
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
          ] ++ (pkgs.lib).optional (!(compiler.isGhc && (compiler.version).ge "8")) (hsPkgs."fail" or ((hsPkgs.pkgs-errors).buildDepError "fail"));
        libs = (pkgs.lib).optional (!flags.pkg-config) (pkgs."pcre" or ((hsPkgs.pkgs-errors).sysDepError "pcre"));
        pkgconfig = (pkgs.lib).optional (flags.pkg-config) (pkgconfPkgs."libpcre" or ((hsPkgs.pkgs-errors).pkgConfDepError "libpcre"));
        buildable = true;
        };
      };
    }