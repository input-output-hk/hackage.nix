{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "servant-multipart"; version = "0.11.4"; };
      license = "BSD-3-Clause";
      copyright = "2016-2017 Alp Mestanogullari, 2018-2019 Servant Contributors";
      maintainer = "alpmestan@gmail.com";
      author = "Alp Mestanogullari";
      homepage = "https://github.com/haskell-servant/servant-multipart#readme";
      url = "";
      synopsis = "multipart/form-data (e.g file upload) support for servant";
      description = "This package adds support for file upload to the servant ecosystem. It draws\non ideas and code from several people who participated in the (in)famous\n[ticket #133](https://github.com/haskell-servant/servant/issues/133) on\nservant's issue tracker.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.directory)
          (hsPkgs.text)
          (hsPkgs.transformers)
          (hsPkgs.http-media)
          (hsPkgs.lens)
          (hsPkgs.resourcet)
          (hsPkgs.servant)
          (hsPkgs.servant-docs)
          (hsPkgs.servant-foreign)
          (hsPkgs.servant-server)
          (hsPkgs.wai)
          (hsPkgs.wai-extra)
          ];
        };
      tests = {
        "upload" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.http-client)
            (hsPkgs.network)
            (hsPkgs.servant)
            (hsPkgs.servant-multipart)
            (hsPkgs.servant-server)
            (hsPkgs.text)
            (hsPkgs.transformers)
            (hsPkgs.wai)
            (hsPkgs.warp)
            ];
          };
        };
      };
    }