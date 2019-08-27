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
      identifier = { name = "HTTP"; version = "4000.0.7"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2002, Warrick Gray\nCopyright (c) 2002-2005, Ian Lynagh\nCopyright (c) 2003-2006, Bjorn Bringert\nCopyright (c) 2004, Andre Furtado\nCopyright (c) 2004, Ganesh Sittampalam\nCopyright (c) 2004-2005, Dominic Steinitz\nCopyright 2007 Robin Bate Boerop\nCopyright 2008- Sigbjorn Finne";
      maintainer = "Sigbjorn Finne <sigbjorn.finne@gmail.com>";
      author = "Warrick Gray <warrick.gray@hotmail.com>";
      homepage = "http://projects.haskell.org/http/";
      url = "";
      synopsis = "A library for client-side HTTP";
      description = "A package for sending and receiving HTTP requests and responses, all implemented\nin Haskell (assuming you've already got a network stack to spare, via the 'network'\npackage!) The representation of content of in requests and responses is user-controllable,\nletting you pick a representation that fits your code better (e.g., use @ByteString@s rather\nthan the default Haskell @String@s.) Example uses:\n\n>\n>    do\n>      rsp <- Network.HTTP.simpleHTTP (getRequest \"http://www.haskell.org/\")\n>              -- fetch document and return it (as a 'String'.)\n>      fmap (take 100) (getResponseBody rsp)\n>\n>    do\n>      rsp <- Network.Browser.browse \$ do\n>               setAllowRedirects True -- handle HTTP redirects\n>               request \$ getRequest \"http://google.com/\"\n>      fmap (take 100) (getResponseBody rsp)\n>\n\nGit repository available at <git://code.galois.com/HTTPbis.git>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."network" or (buildDepError "network"))
          (hsPkgs."parsec" or (buildDepError "parsec"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          ] ++ (if flags.old-base
          then [ (hsPkgs."base" or (buildDepError "base")) ]
          else [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."array" or (buildDepError "array"))
            (hsPkgs."old-time" or (buildDepError "old-time"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            ]);
        };
      };
    }