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
    flags = { old-base = false; };
    package = {
      specVersion = "1.2";
      identifier = { name = "hs-dotnet"; version = "0.4.0"; };
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
      "library" = {
        depends = [ (hsPkgs."ghc-prim" or (buildDepError "ghc-prim")) ] ++ [
          (hsPkgs."base" or (buildDepError "base"))
          ];
        libs = [
          (pkgs."ole32" or (sysDepError "ole32"))
          (pkgs."oleaut32" or (sysDepError "oleaut32"))
          ];
        buildable = true;
        };
      };
    }