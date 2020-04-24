{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "tokyotyrant-haskell"; version = "1.0.1"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2009 Polar Mobile";
      maintainer = "";
      author = "Gregory Collins <gregory.collins@polarmobile.com>";
      homepage = "http://www.polarmobile.com/";
      url = "";
      synopsis = "FFI bindings to libtokyotyrant";
      description = "This package provides a thin FFI binding to the libtokyotyrant\nC library shipped with Mikio Hirabayashi's Tokyo\nTyrant. (<http://tokyocabinet.sourceforge.net/tyrantdoc/>)";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          ];
        libs = [
          (pkgs."tokyocabinet" or ((hsPkgs.pkgs-errors).sysDepError "tokyocabinet"))
          (pkgs."tokyotyrant" or ((hsPkgs.pkgs-errors).sysDepError "tokyotyrant"))
          ];
        buildable = true;
        };
      };
    }