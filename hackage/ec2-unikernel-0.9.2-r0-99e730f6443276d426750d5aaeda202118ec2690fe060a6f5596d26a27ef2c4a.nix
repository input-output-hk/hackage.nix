{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "ec2-unikernel"; version = "0.9.2"; };
      license = "BSD-3-Clause";
      copyright = "Copyright 2016 Galois, Inc.";
      maintainer = "Adam Wick <awick@galois.com>";
      author = "Adam Wick <awick@galois.com>";
      homepage = "http://github.com/GaloisInc/ec2-unikernel";
      url = "";
      synopsis = "A handy tool for uploading unikernels to Amazon's EC2.";
      description = "This tool uploads unikernels built with the HaLVM, Mirage,\nor other tools to Amazon's cloud. The unikernel will then\nappear as an AMI, which can be run and shared as needed.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "ec2-unikernel" = {
          depends = [
            (hsPkgs.amazonka)
            (hsPkgs.amazonka-core)
            (hsPkgs.amazonka-ec2)
            (hsPkgs.amazonka-s3)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.lens)
            (hsPkgs.process)
            (hsPkgs.semigroups)
            (hsPkgs.temporary)
            (hsPkgs.text)
            (hsPkgs.time)
            (hsPkgs.unix)
            ];
          };
        };
      };
    }