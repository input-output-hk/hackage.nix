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
        name = "github";
        version = "0.13.1";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright 2012-2013 Mike Burns, Copyright 2013 John Wiegley";
      maintainer = "johnw@fpcomplete.com";
      author = "Mike Burns, John Wiegley";
      homepage = "https://github.com/fpco/github";
      url = "";
      synopsis = "Access to the Github API, v3.";
      description = "The Github API provides programmatic access to the full\nGithub Web site, from Issues to Gists to repos down to the underlying git data\nlike references and trees. This library wraps all of that, exposing a basic but\nHaskell-friendly set of functions and data structures.\n\nFor more of an overview please see the README: <https://github.com/fpco/github/blob/master/README.md>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.time)
          (hsPkgs.aeson)
          (hsPkgs.attoparsec)
          (hsPkgs.bytestring)
          (hsPkgs.case-insensitive)
          (hsPkgs.containers)
          (hsPkgs.hashable)
          (hsPkgs.text)
          (hsPkgs.old-locale)
          (hsPkgs.HTTP)
          (hsPkgs.network)
          (hsPkgs.http-conduit)
          (hsPkgs.conduit)
          (hsPkgs.failure)
          (hsPkgs.http-types)
          (hsPkgs.data-default)
          (hsPkgs.vector)
          (hsPkgs.unordered-containers)
          (hsPkgs.cryptohash)
          (hsPkgs.byteable)
          (hsPkgs.base16-bytestring)
        ];
      };
    };
  }