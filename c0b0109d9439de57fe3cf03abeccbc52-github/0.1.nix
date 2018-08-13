{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.6";
      identifier = {
        name = "github";
        version = "0.1";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright 2011 Mike Burns";
      maintainer = "mike@mike-burns.com";
      author = "Mike Burns";
      homepage = "";
      url = "";
      synopsis = "Access to the Github API, v3.";
      description = "The Github API provides programmatic access to the full\nGithub Web site, from Issues to Gists to repos down to the underlying git data\nlike references and trees. This library wraps all of that, exposing a basic but\nHaskell-friendly set of functions and data structures.";
      buildType = "Simple";
    };
    components = {
      "github" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.time)
          (hsPkgs.aeson)
          (hsPkgs.attoparsec)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.text)
          (hsPkgs.old-locale)
          (hsPkgs.HTTP)
          (hsPkgs.network)
          (hsPkgs.http-enumerator)
          (hsPkgs.uri)
          (hsPkgs.failure)
          (hsPkgs.http-types)
          (hsPkgs.vector)
        ];
      };
    };
  }