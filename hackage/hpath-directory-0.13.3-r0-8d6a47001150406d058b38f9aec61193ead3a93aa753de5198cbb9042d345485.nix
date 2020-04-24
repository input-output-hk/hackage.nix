{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "hpath-directory"; version = "0.13.3"; };
      license = "BSD-3-Clause";
      copyright = "Julian Ospald <hasufell@posteo.de> 2020";
      maintainer = "Julian Ospald <hasufell@posteo.de>";
      author = "Julian Ospald <hasufell@posteo.de>";
      homepage = "https://github.com/hasufell/hpath";
      url = "";
      synopsis = "Alternative to 'directory' package with ByteString based filepaths";
      description = "This provides a safer alternative to the 'directory'\npackage. FilePaths are ByteString based, so this\npackage only works on POSIX systems.\nFor a more high-level version of this with\nproper Path type, use 'hpath-io', which makes\nuse of this package.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = ([
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."IfElse" or ((hsPkgs.pkgs-errors).buildDepError "IfElse"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."exceptions" or ((hsPkgs.pkgs-errors).buildDepError "exceptions"))
          (hsPkgs."hpath-filepath" or ((hsPkgs.pkgs-errors).buildDepError "hpath-filepath"))
          (hsPkgs."hpath-posix" or ((hsPkgs.pkgs-errors).buildDepError "hpath-posix"))
          (hsPkgs."safe-exceptions" or ((hsPkgs.pkgs-errors).buildDepError "safe-exceptions"))
          (hsPkgs."streamly" or ((hsPkgs.pkgs-errors).buildDepError "streamly"))
          (hsPkgs."streamly-bytestring" or ((hsPkgs.pkgs-errors).buildDepError "streamly-bytestring"))
          (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
          (hsPkgs."unix" or ((hsPkgs.pkgs-errors).buildDepError "unix"))
          (hsPkgs."unix-bytestring" or ((hsPkgs.pkgs-errors).buildDepError "unix-bytestring"))
          (hsPkgs."utf8-string" or ((hsPkgs.pkgs-errors).buildDepError "utf8-string"))
          ] ++ (pkgs.lib).optional (system.isWindows) (hsPkgs."unbuildable" or ((hsPkgs.pkgs-errors).buildDepError "unbuildable"))) ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).lt "8.0") (hsPkgs."fail" or ((hsPkgs.pkgs-errors).buildDepError "fail"));
        buildable = if system.isWindows then false else true;
        };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."HUnit" or ((hsPkgs.pkgs-errors).buildDepError "HUnit"))
            (hsPkgs."IfElse" or ((hsPkgs.pkgs-errors).buildDepError "IfElse"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."hpath-directory" or ((hsPkgs.pkgs-errors).buildDepError "hpath-directory"))
            (hsPkgs."hpath-filepath" or ((hsPkgs.pkgs-errors).buildDepError "hpath-filepath"))
            (hsPkgs."hpath-posix" or ((hsPkgs.pkgs-errors).buildDepError "hpath-posix"))
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
            (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
            (hsPkgs."unix" or ((hsPkgs.pkgs-errors).buildDepError "unix"))
            (hsPkgs."unix-bytestring" or ((hsPkgs.pkgs-errors).buildDepError "unix-bytestring"))
            (hsPkgs."utf8-string" or ((hsPkgs.pkgs-errors).buildDepError "utf8-string"))
            ] ++ (pkgs.lib).optional (system.isWindows) (hsPkgs."unbuildable" or ((hsPkgs.pkgs-errors).buildDepError "unbuildable"));
          buildable = if system.isWindows then false else true;
          };
        };
      };
    }