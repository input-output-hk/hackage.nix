{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { old-base = false; };
    package = {
      specVersion = "1.2";
      identifier = { name = "hs-dotnet"; version = "0.3.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Sigbjorn Finne <sof@forkIO.com>";
      author = "Sigbjorn Finne <sof@forkIO.com>";
      homepage = "";
      url = "";
      synopsis = "Pragmatic .NET interop for Haskell";
      description = "This package provides a way for Haskell code (via GHC) to interact with .NET\ncode and libraries. Full access to the .NET object model is provided,\nletting you create and manipulate .NET objects.\n\nSupport for calling back into to Haskell from .NET code is also supported,\nexposing Haskell code as delegates.\n\nWork on broadening the interop even further between the two worlds is underway.\n\nMore info on package and its features at <http://haskell.forkIO.com/dotnet>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs.base) (hsPkgs.ghc-prim) ];
        libs = [ (pkgs."ole32") (pkgs."oleaut32") ];
        };
      };
    }