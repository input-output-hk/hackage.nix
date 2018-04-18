{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      old-base = false;
    } // flags;
    in {
      package = {
        specVersion = "1.2";
        identifier = {
          name = "hs-dotnet";
          version = "0.4.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Sigbjorn Finne <sof@forkIO.com>";
        author = "Sigbjorn Finne <sof@forkIO.com>";
        homepage = "";
        url = "";
        synopsis = "Pragmatic .NET interop for Haskell";
        description = "@hs-dotnet@ integrates the .NET platform with Haskell (via GHC.)\n\nIt lets you interact with .NET code and libraries, providing full access\nto .NET objects in a type-safe manner. This also includes parameterized .NET\ntypes (/generic types/), representing them in a manner natural to Haskell.\n\nDually, Haskell functions can be accessed and called from .NET, @hs-dotnet@\ntransparently exposing these as delegates for you. Two example uses of this\nfacility are the use of Haskell when programming LINQ and in Windows Forms\nUIs. Here's how to fire up an example program accessing LINQ:\n\n> c:\\haskell> cd examples\n> c:\\haskell> ghci LinqQuery.hs\n> ....\n> LinqQuery> whereQuery\n\nThe package also includes tool support for automatically generating Haskell\nwrappers and types to .NET classes. The package assumes at least v2.0 of\nthe .NET framework.\n\nMore info on package and its features at <http://haskell.forkIO.com/dotnet>";
        buildType = "Custom";
      };
      components = {
        hs-dotnet = {
          depends  = [
            hsPkgs.ghc-prim
          ] ++ [ hsPkgs.base ];
          libs = [
            pkgs.ole32
            pkgs.oleaut32
          ];
        };
      };
    }