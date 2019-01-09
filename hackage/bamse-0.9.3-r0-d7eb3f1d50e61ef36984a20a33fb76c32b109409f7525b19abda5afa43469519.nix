{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { old-base = false; };
    package = {
      specVersion = "1.2";
      identifier = { name = "bamse"; version = "0.9.3"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "sof@forkIO.com";
      author = "Sigbjorn Finne <sof@forkIO.com>";
      homepage = "";
      url = "";
      synopsis = "A Windows Installer (MSI) generator framework";
      description = "Bamse is a framework for building Windows Installers for\nyour Windows applications, giving you a comprehensive set\nof features to put together Windows Installers using Haskell.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.com)
          (hsPkgs.haskell98)
          (hsPkgs.directory)
          (hsPkgs.pretty)
          ] ++ [ (hsPkgs.base) ];
        };
      exes = { "bamse" = {}; };
      };
    }