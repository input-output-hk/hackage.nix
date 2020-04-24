{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "posix-pty"; version = "0.2.1"; };
      license = "BSD-3-Clause";
      copyright = "Copyright © 2013-2015 Merijn Verstraaten,\nCopyright © 2014 Vladimir Kirillov";
      maintainer = "Merijn Verstraaten <merijn@inconsistent.nl>";
      author = "Merijn Verstraaten";
      homepage = "https://bitbucket.org/merijnv/posix-pty";
      url = "";
      synopsis = "Pseudo terminal interaction with subprocesses.";
      description = "This package simplifies the creation of subprocesses that interact with\ntheir parent via a pseudo terminal (see @man pty@).";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
          (hsPkgs."unix" or ((hsPkgs.pkgs-errors).buildDepError "unix"))
          ];
        libs = (pkgs.lib).optional (system.isLinux || system.isFreebsd) (pkgs."util" or ((hsPkgs.pkgs-errors).sysDepError "util"));
        buildable = true;
        };
      };
    }