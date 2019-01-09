{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "riak-protobuf-lens"; version = "0.22.0.0"; };
      license = "LicenseRef-OtherLicense";
      copyright = "";
      maintainer = "Tim McGilchrist <timmcgil@gmail.com>, Mitchell Rosen <mitchellwrosen@gmail.com>";
      author = "";
      homepage = "https://github.com/riak-haskell-client/riak-haskell-client#readme";
      url = "";
      synopsis = "Lenses for riak-protobuf";
      description = "A set of Haskell lenses for interacting with the protocol buffer\nAPI of the Riak decentralized data store.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.riak-protobuf)
          ];
        };
      exes = {
        "generate" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.microlens)
            (hsPkgs.microlens-th)
            (hsPkgs.riak-protobuf)
            (hsPkgs.template-haskell)
            ];
          };
        };
      };
    }