{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { production = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "rfc-servant"; version = "0.0.0.1"; };
      license = "MIT";
      copyright = "";
      maintainer = "smokejumperit+rfc@gmail.com";
      author = "Robert Fischer";
      homepage = "https://github.com/RobertFischer/rfc#readme";
      url = "";
      synopsis = "The Servant extensions from the Robert Fischer Commons.";
      description = "Various capabilities supporting @Servant@ development, including creating the concept of a  \"Resource\" (which simplifies REST boilerplate).";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.aeson)
          (hsPkgs.amazonka)
          (hsPkgs.base)
          (hsPkgs.binary)
          (hsPkgs.blaze-html)
          (hsPkgs.data-default)
          (hsPkgs.http-types)
          (hsPkgs.lens)
          (hsPkgs.markdown)
          (hsPkgs.natural-transformation)
          (hsPkgs.rfc-http-client)
          (hsPkgs.rfc-prelude)
          (hsPkgs.rfc-psql)
          (hsPkgs.rfc-redis)
          (hsPkgs.servant)
          (hsPkgs.servant-blaze)
          (hsPkgs.servant-docs)
          (hsPkgs.servant-server)
          (hsPkgs.servant-swagger)
          (hsPkgs.servant-swagger-ui)
          (hsPkgs.swagger2)
          (hsPkgs.wai)
          (hsPkgs.wreq)
          ];
        };
      };
    }