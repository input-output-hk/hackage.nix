{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "montage-client"; version = "0.1.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "dev@bu.mp";
      author = "Bump Technologies, Inc";
      homepage = "http://github.com/bumptech/montage-haskell-client";
      url = "";
      synopsis = "Riak Resolution Proxy Client";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.mtl)
          (hsPkgs.bytestring)
          (hsPkgs.time)
          (hsPkgs.old-locale)
          (hsPkgs.containers)
          (hsPkgs.system-uuid)
          (hsPkgs.aeson)
          (hsPkgs.text)
          (hsPkgs.text-format)
          (hsPkgs.ListLike)
          (hsPkgs.stm)
          (hsPkgs.riak-bump)
          (hsPkgs.pool-conduit)
          (hsPkgs.unordered-containers)
          (hsPkgs.zeromq-haskell)
          (hsPkgs.protocol-buffers)
          (hsPkgs.protocol-buffers-descriptor)
          (hsPkgs.stats-web)
          (hsPkgs.safe)
          ];
        };
      };
    }