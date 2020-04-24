{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { _regex-posix-clib = false; };
    package = {
      specVersion = "1.12";
      identifier = { name = "regex-posix"; version = "0.96.0.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2007-2010, Christopher Kuklewicz";
      maintainer = "hvr@gnu.org";
      author = "Christopher Kuklewicz";
      homepage = "";
      url = "";
      synopsis = "POSIX Backend for \"Text.Regex\" (regex-base)";
      description = "The POSIX regex backend for <//hackage.haskell.org/package/regex-base regex-base>.\n\nThe main appeal of this backend is that it's very lightweight due to its reliance on the ubiquitous <https://pubs.opengroup.org/onlinepubs/9699919799/basedefs/regex.h.html POSIX.2 regex> facility that is provided by the standard C library on most POSIX platforms.\n\nSee also <https://wiki.haskell.org/Regular_expressions> for more information.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = ([
          (hsPkgs."regex-base" or ((hsPkgs.pkgs-errors).buildDepError "regex-base"))
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
          ] ++ (if flags._regex-posix-clib
          then [
            (hsPkgs."regex-posix-clib" or ((hsPkgs.pkgs-errors).buildDepError "regex-posix-clib"))
            ]
          else (pkgs.lib).optional (system.isWindows) (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base")))) ++ (pkgs.lib).optional (!(compiler.isGhc && (compiler.version).ge "8")) (hsPkgs."fail" or ((hsPkgs.pkgs-errors).buildDepError "fail"));
        buildable = true;
        };
      };
    }