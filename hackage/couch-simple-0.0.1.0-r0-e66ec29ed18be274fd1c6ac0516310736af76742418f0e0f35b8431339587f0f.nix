{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "couch-simple"; version = "0.0.1.0"; };
      license = "MIT";
      copyright = "Copyright (c) 2015, Michael Alan Dorman";
      maintainer = "mdorman@jaunder.io";
      author = "Michael Alan Dorman";
      homepage = "https://github.com/mdorman/couch-simple";
      url = "";
      synopsis = "A modern, lightweight, complete client for CouchDB";
      description = "Based on http-client, with intended extensions for streaming through Conduit and other libraries.";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.aeson)
          (hsPkgs.attoparsec)
          (hsPkgs.bifunctors)
          (hsPkgs.bytestring)
          (hsPkgs.data-default)
          (hsPkgs.exceptions)
          (hsPkgs.http-client)
          (hsPkgs.http-types)
          (hsPkgs.integer-gmp)
          (hsPkgs.mtl)
          (hsPkgs.text)
          (hsPkgs.transformers)
          (hsPkgs.unordered-containers)
          (hsPkgs.uuid)
          (hsPkgs.vector)
          ] ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).lt "7.8") (hsPkgs.bytestring-builder);
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs.aeson)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.couch-simple)
            (hsPkgs.data-default)
            (hsPkgs.directory)
            (hsPkgs.exceptions)
            (hsPkgs.filepath)
            (hsPkgs.hjsonschema)
            (hsPkgs.hlint)
            (hsPkgs.http-client)
            (hsPkgs.http-types)
            (hsPkgs.random)
            (hsPkgs.tasty)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.text)
            (hsPkgs.transformers)
            (hsPkgs.unordered-containers)
            (hsPkgs.uuid)
            ];
          build-tools = [
            (hsPkgs.buildPackages.couchdb or (pkgs.buildPackages.couchdb))
            ];
          };
        };
      };
    }