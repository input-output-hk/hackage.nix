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
      specVersion = "1.8";
      identifier = { name = "snaplet-redson"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "<dima@dzhus.org>";
      author = "Dmitry Dzhus";
      homepage = "https://github.com/dzhus/snaplet-redson/";
      url = "";
      synopsis = "CRUD for JSON data with Redis storage";
      description = "This snaplet provides HTTP API to /c/reate, /r/ead,\n/u/pdate and /d/elete JSON objects sent by client\nand stored in Redis key-value cache. CRUD methods\nare mapped to HTTP `POST`, `GET`, `PUT` and\n`DELETE`. Valid objects are described using model\ndefinition syntax, which includes information on\nfields and permissions. The snaplet supports\nrole-based user permissions system as implemented\nby Snap authentication. Model definitions may\nalso be used by browser JavaScript to provide\ninterface to create or edit objects.\nThere is a permission-less transparent mode,\nWebSocket create/delete notifications and\ntimeline method to serve information about\nrecently added objects. Ad-hoc search is\nimplemented in Redis and provided via snaplet\nroute.\nThere's a \"snapless\" part of the package, which\nimplements Snap-agnostic Redis CRUD operations\nfor key-value pair collections and may be used\nfor tools which operate with storage directly\nwithout using web framework.\nMore of usage documentation is contained in\n<https://github.com/dzhus/snaplet-redson/blob/master/README.org>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."aeson" or (buildDepError "aeson"))
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."configurator" or (buildDepError "configurator"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."data-lens" or (buildDepError "data-lens"))
          (hsPkgs."data-lens-template" or (buildDepError "data-lens-template"))
          (hsPkgs."easy-file" or (buildDepError "easy-file"))
          (hsPkgs."hedis" or (buildDepError "hedis"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."snap" or (buildDepError "snap"))
          (hsPkgs."snap-core" or (buildDepError "snap-core"))
          (hsPkgs."snaplet-redis" or (buildDepError "snaplet-redis"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."utf8-string" or (buildDepError "utf8-string"))
          (hsPkgs."websockets" or (buildDepError "websockets"))
          (hsPkgs."websockets-snap" or (buildDepError "websockets-snap"))
          ];
        buildable = true;
        };
      };
    }