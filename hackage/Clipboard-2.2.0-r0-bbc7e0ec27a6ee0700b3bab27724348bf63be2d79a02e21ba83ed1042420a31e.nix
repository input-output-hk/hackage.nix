{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "Clipboard"; version = "2.2.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Daniel Diaz <dhelta.diaz@gmail.com>";
      author = "Sævar Berg, Daniel Díaz";
      homepage = "http://sites.google.com/site/dheltadiaz/packages/clipboard";
      url = "";
      synopsis = "System clipboard interface.";
      description = "/Clipboard/ is a package that allows you to interact with the system clipboard easily.\n\nCurrently, only in a Windows system.\n\nChanges from last version:\n\n* Added compatibility with the unicode character set with 'getClipboardString'.\n\n* Unicode character set is the new standard for 'setClipboardString'.\n\n* Fixed the function 'modifyClipboardString'.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."Win32" or ((hsPkgs.pkgs-errors).buildDepError "Win32"))
          ];
        buildable = true;
        };
      };
    }