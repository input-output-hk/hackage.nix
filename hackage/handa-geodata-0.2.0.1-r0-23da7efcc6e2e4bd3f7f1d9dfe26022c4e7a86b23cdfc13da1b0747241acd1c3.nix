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
      specVersion = "1.10";
      identifier = { name = "handa-geodata"; version = "0.2.0.1"; };
      license = "MIT";
      copyright = "(c) 2014 Brian W Bush";
      maintainer = "code@bwbush.io";
      author = "Brian W Bush";
      homepage = "http://code.bwbush.io/handa-geodata/";
      url = "http://code.bwbush.io/handa-geodata/downloads";
      synopsis = "Geographic and Geometric Data";
      description = "This package contains functions, types, and classes for manipulating geographic and geometric data.\n\nThe package supports parsing of GeoJSON 1.0 < <http://geojson.org/geojson-spec.html>>.\n\nThe package also has rudimentary support for the Visualization Toolkit (VTK) 4.2 < <http://www.vtk.org/VTK/img/file-formats.pdf>>.  An executable is provided for converting GeoJSON files to VTK ones.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."aeson" or (buildDepError "aeson"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."scientific" or (buildDepError "scientific"))
          ];
        };
      exes = {
        "handa-test-geojson" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."aeson" or (buildDepError "aeson"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."handa-geodata" or (buildDepError "handa-geodata"))
            (hsPkgs."scientific" or (buildDepError "scientific"))
            ];
          };
        "handa-geojson-to-vtk" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."aeson" or (buildDepError "aeson"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."handa-geodata" or (buildDepError "handa-geodata"))
            (hsPkgs."scientific" or (buildDepError "scientific"))
            ];
          };
        };
      };
    }