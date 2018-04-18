{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      tolabeled = false;
    } // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "lio";
          version = "0.9.0.1";
        };
        license = "LicenseRef-GPL";
        copyright = "";
        maintainer = "Hails team <hails at scs dot stanford dot edu>";
        author = "Hails team";
        homepage = "";
        url = "";
        synopsis = "Labeled IO Information Flow Control Library";
        description = "The /Labeled IO/ (LIO) library is an information flow control (IFC)\nlibrary. IFC is a mechanism that enforces security policies by\ntracking and controlling the flow of information within a system.\nDifferent from discretionary access control (think UNIX file\npermissions), with IFC you can execute an untrusted computation on\nyour secret data and be sure that it does not leak it or overwrite\nit.\n\nLIO is an IFC library that can be used to implement such untrusted\ncomputations. LIO provides combinators similar to those of 'IO' for\nperforming side-effecting computations (e.g., accessing the\nfilesystem, modifying mutable references, throwing exceptions, etc.)\nTo track and control the flow of information, LIO associates a\nsecurity policy, usually called a /label/, with every piece of data.\nA label may, for example, impose a restriction on who can observe,\npropagate, or modify the data labeled as such.  Different from\nstandard IO operations, the LIO counterparts usually take an\nadditional parameter for the label which they inspect before\nactually performing the (underlying IO) side-effecting computation.\nSo, before writing to a file LIO asserts that the write will not\nviolate any security policies associated with the file or the data\nto be written.\n\nMost code should import module \"LIO\" and whichever label format the\napplication is using (e.g., \"LIO.DCLabel\"). All untrusted code\nshould have type 'LIO', which trusted code can safely execute with\n'evalLIO'. See \"LIO\" for a description of the core library API.\n\nThe paper that describes the core of LIO, including motivation and\nformal modeling/proofs, is available here:\n<http://arxiv.org/abs/1207.1457>";
        buildType = "Simple";
      };
      components = {
        lio = {
          depends  = [
            hsPkgs.base
            hsPkgs.transformers
            hsPkgs.containers
            hsPkgs.bytestring
            hsPkgs.cereal
            hsPkgs.filepath
            hsPkgs.directory
            hsPkgs.xattr
            hsPkgs.zlib
            hsPkgs.SHA
            hsPkgs.time
          ];
        };
      };
    }