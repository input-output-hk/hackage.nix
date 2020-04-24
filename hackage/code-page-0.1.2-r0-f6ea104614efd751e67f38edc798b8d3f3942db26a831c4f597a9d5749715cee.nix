{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "code-page"; version = "0.1.2"; };
      license = "BSD-3-Clause";
      copyright = "(C) 2016-2017 Ryan Scott";
      maintainer = "Ryan Scott <ryan.gl.scott@gmail.com>";
      author = "Ryan Scott";
      homepage = "https://github.com/RyanGlScott/code-page";
      url = "";
      synopsis = "Windows code page library for Haskell";
      description = "This library provides two modules:\n\n* \"System.IO.CodePage\": a cross-platform module that exports\nfunctions which adjust code pages on Windows, and do nothing\non other operating systems.\n\n* \"System.Win32.CodePage\": On Windows, this exports functions\nfor getting, setting, and analyzing code pages. On other\noperating systems, this module exports nothing.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          ] ++ (pkgs.lib).optional (system.isWindows) (hsPkgs."Win32" or ((hsPkgs.pkgs-errors).buildDepError "Win32"));
        build-tools = [
          (hsPkgs.buildPackages.hsc2hs or (pkgs.buildPackages.hsc2hs or ((hsPkgs.pkgs-errors).buildToolDepError "hsc2hs")))
          ];
        buildable = true;
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."code-page" or ((hsPkgs.pkgs-errors).buildDepError "code-page"))
            ];
          buildable = true;
          };
        };
      };
    }