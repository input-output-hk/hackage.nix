{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "caffegraph";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "andrew@tullo.ch";
      author = "Andrew Tulloch";
      homepage = "https://github.com/ajtulloch/caffegraph/";
      url = "";
      synopsis = "A compiler for building, optimizing, visualizing, and generating (Caffe/Torch) DNNs";
      description = "";
      buildType = "Simple";
    };
    components = {
      "caffegraph" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.fgl)
          (hsPkgs.filepath)
          (hsPkgs.graphviz)
          (hsPkgs.language-lua)
          (hsPkgs.lens)
          (hsPkgs.mtl)
          (hsPkgs.process)
          (hsPkgs.protocol-buffers)
          (hsPkgs.protocol-buffers-descriptor)
          (hsPkgs.template-haskell)
          (hsPkgs.temporary)
          (hsPkgs.optparse-applicative)
          (hsPkgs.text)
        ];
      };
    };
  }