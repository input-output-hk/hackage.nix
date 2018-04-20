{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "lambdatwit";
          version = "0.1.0.0";
        };
        license = "MIT";
        copyright = "";
        maintainer = "aaron.ash@gmail.com";
        author = "Aaron Ash";
        homepage = "http://github.com/ashyisme/lambdatwit";
        url = "";
        synopsis = "Lambdabot running as a twitter bot. Similar to the @fsibot f# bot.";
        description = "A twitter bot using mueval to evaluate haskell tweets.\nFurther info: <https://github.com/AshyIsMe/lambdatwit/blob/master/README.md>";
        buildType = "Simple";
      };
      components = {
        exes = {
          lambdatwit = {
            depends  = [
              hsPkgs.base
              hsPkgs.acid-state
              hsPkgs.authenticate-oauth
              hsPkgs.bytestring
              hsPkgs.case-insensitive
              hsPkgs.conduit
              hsPkgs.containers
              hsPkgs.data-default
              hsPkgs.exceptions
              hsPkgs.hint
              hsPkgs.http-conduit
              hsPkgs.lens
              hsPkgs.MissingH
              hsPkgs.monad-control
              hsPkgs.monad-logger
              hsPkgs.mtl
              hsPkgs.mueval
              hsPkgs.network-uri
              hsPkgs.resourcet
              hsPkgs.safecopy
              hsPkgs.text
              hsPkgs.transformers
              hsPkgs.transformers-base
              hsPkgs.twitter-conduit
              hsPkgs.twitter-types
              hsPkgs.utf8-string
            ];
          };
          oauth_pin = {
            depends  = [
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.transformers-base
              hsPkgs.transformers
              hsPkgs.monad-control
              hsPkgs.bytestring
              hsPkgs.text
              hsPkgs.resourcet
              hsPkgs.conduit
              hsPkgs.http-types
              hsPkgs.http-conduit
              hsPkgs.authenticate-oauth
              hsPkgs.twitter-conduit
            ];
          };
        };
      };
    }