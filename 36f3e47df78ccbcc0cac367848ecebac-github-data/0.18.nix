{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      aeson-compat = true;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "github-data";
          version = "0.18";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright 2012-2013 Mike Burns, Copyright 2013-2015 John Wiegley, Copyright 2016 Oleg Grenrus";
        maintainer = "M Farkas-Dyck <strake888@gmail.com>";
        author = "Mike Burns, John Wiegley, Oleg Grenrus";
        homepage = "https://github.com/strake/github.hs";
        url = "";
        synopsis = "Access to the GitHub API, v3.";
        description = "The GitHub API provides programmatic access to the full\nGitHub Web site, from Issues to Gists to repos down to the underlying git data\nlike references and trees. This library wraps all of that, exposing a basic but\nHaskell-friendly set of functions and data structures.\n\nFor supported endpoints see \"GitHub\" module.\n\n> import qualified GitHub as GH\n>\n> main :: IO ()\n> main = do\n>     possibleUser <- GH.executeRequest' \$ GH.userInfoR \"phadej\"\n>     print possibleUser\n\nFor more of an overview please see the README: <https://github.com/phadej/github/blob/master/README.md>";
        buildType = "Simple";
      };
      components = {
        "github-data" = {
          depends  = [
            hsPkgs.base
            hsPkgs.aeson
            hsPkgs.base-compat
            hsPkgs.base16-bytestring
            hsPkgs.binary
            hsPkgs.binary-orphans
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.deepseq
            hsPkgs.deepseq-generics
            hsPkgs.exceptions
            hsPkgs.hashable
            hsPkgs.http-client
            hsPkgs.http-types
            hsPkgs.iso8601-time
            hsPkgs.network-uri
            hsPkgs.text
            hsPkgs.time
            hsPkgs.transformers
            hsPkgs.transformers-compat
            hsPkgs.unordered-containers
            hsPkgs.vector
            hsPkgs.vector-instances
            hsPkgs.tls
          ] ++ (if _flags.aeson-compat
            then [ hsPkgs.aeson-compat ]
            else [ hsPkgs.aeson-extra ]);
        };
      };
    }