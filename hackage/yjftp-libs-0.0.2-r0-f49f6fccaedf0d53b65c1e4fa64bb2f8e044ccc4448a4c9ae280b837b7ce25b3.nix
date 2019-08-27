let
  buildDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (build dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  sysDepError = pkg:
    builtins.throw ''
      The Nixpkgs package set does not contain the package: ${pkg} (system dependency).
      
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      '';
  pkgConfDepError = pkg:
    builtins.throw ''
      The pkg-conf packages does not contain the package: ${pkg} (pkg-conf dependency).
      
      You may need to augment the pkg-conf package mapping in haskell.nix so that it can be found.
      '';
  exeDepError = pkg:
    builtins.throw ''
      The local executable components do not include the component: ${pkg} (executable dependency).
      '';
  legacyExeDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (executable dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  buildToolDepError = pkg:
    builtins.throw ''
      Neither the Haskell package set or the Nixpkgs package set contain the package: ${pkg} (build tool dependency).
      
      If this is a system dependency:
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      
      If this is a Haskell dependency:
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
in { system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = { name = "yjftp-libs"; version = "0.0.2"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "Yoshikuni Jujo <PAF01143@nifty.ne.jp>";
      author = "Yoshikuni Jujo";
      homepage = "http://homepage3.nifty.com/salamander/second/projects/yjftp/index.xhtml";
      url = "http://homepage3.nifty.com/salamander/second/portage/distfiles/yjftp-0.3.4.tar.gz";
      synopsis = "CUI FTP client like 'ftp', 'ncftp'";
      description = "It will be library for yjftp.\n\nExecutable 'yjftp-ni\" is sample. It may be removed.\n\nyjftp-ni is command line FTP client.\n\nIf no arguments, then it ask server address, user name and password.\n\nIf only argument server address are given, then it try login as anonymous user.\n\nIf argument server address and user name, then it ask password.\n\nAnd password can give by '-p [passwd]' from command line.\n\nYou can put or get immediately by doing following.\n\nyjftp-ni put filepath srvr.address/directorypath [user_name] [-p password]\n\nyjftp-ni get srvr.address/filepath [user_name] [-p password]";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."unix" or (buildDepError "unix"))
          (hsPkgs."directory" or (buildDepError "directory"))
          (hsPkgs."process" or (buildDepError "process"))
          (hsPkgs."ftphs" or (buildDepError "ftphs"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          ];
        };
      exes = { "yjftp-ni" = {}; };
      };
    }