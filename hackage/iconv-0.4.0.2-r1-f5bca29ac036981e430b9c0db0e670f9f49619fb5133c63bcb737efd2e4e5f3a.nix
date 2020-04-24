{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { bytestring_in_base = true; };
    package = {
      specVersion = "1.2.1";
      identifier = { name = "iconv"; version = "0.4.0.2"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2006-2008 Duncan Coutts";
      maintainer = "Duncan Coutts <duncan@haskell.org>";
      author = "Duncan Coutts <duncan@haskell.org>";
      homepage = "";
      url = "";
      synopsis = "String encoding conversion";
      description = "Provides an interface to the POSIX iconv library functions\nfor string encoding conversion.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = if flags.bytestring_in_base
          then [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            ]
          else [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            ];
        libs = (pkgs.lib).optional (system.isOsx || system.isFreebsd) (pkgs."iconv" or ((hsPkgs.pkgs-errors).sysDepError "iconv"));
        buildable = true;
        };
      };
    }