{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = {
        name = "AppleScript";
        version = "0.2";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Reiner Pope <reiner.pope@gmail.com>";
      author = "Wouter Swierstra <wouter.swierstra@gmail.com>, Reiner Pope <reiner.pope@gmail.com>";
      homepage = "https://github.com/reinerp/haskell-AppleScript";
      url = "";
      synopsis = "Call AppleScript from Haskell, and then call back into Haskell.";
      description = "This package enables you to compile and execute AppleScript code from\nHaskell, and provides support for this AppleScript code to call back\ninto Haskell. To get started, see \"Foreign.AppleScript.Rich\".";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = if system.isOsx
          then [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.data-default)
            (hsPkgs.text)
            (hsPkgs.haskell-src-meta)
            (hsPkgs.text-format)
            (hsPkgs.network)
            (hsPkgs.conduit)
            (hsPkgs.directory)
            (hsPkgs.template-haskell)
            (hsPkgs.mtl)
          ]
          else [ (hsPkgs.base) ];
        frameworks = pkgs.lib.optional (system.isOsx) (pkgs."Carbon");
      };
    };
  }