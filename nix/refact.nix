{
  "0.1.0.0" = {
    sha256 = "37d865399819738b8114e553f9ee26dd5bea851e9213c81d2394fbf14194c741";
    revisions = {
      r0 = {
        nix = import ../hackage/refact-0.1.0.0-r0-b41b1493c625504df5691cecc1f4ddcb8c73b2c7fff3aa23cf57a4083bd7e9bf.nix;
        revNum = 0;
        sha256 = "b41b1493c625504df5691cecc1f4ddcb8c73b2c7fff3aa23cf57a4083bd7e9bf";
      };
      r1 = {
        nix = import ../hackage/refact-0.1.0.0-r1-dabba3be0f1707de0e3b93e431868864754dd156e0df92ecf49f60ff0b1a295a.nix;
        revNum = 1;
        sha256 = "dabba3be0f1707de0e3b93e431868864754dd156e0df92ecf49f60ff0b1a295a";
      };
      default = "r1";
    };
  };
  "0.2.0.0" = {
    sha256 = "0e6d84927cd194a33452480d203d9193ad6d2e3c1a2cba32f9ad2f244694abc7";
    revisions = {
      r0 = {
        nix = import ../hackage/refact-0.2.0.0-r0-bd9f6614c46c8e7dbf8ea2e4261330f2e406d18c133054475aec0abdd8ae6127.nix;
        revNum = 0;
        sha256 = "bd9f6614c46c8e7dbf8ea2e4261330f2e406d18c133054475aec0abdd8ae6127";
      };
      default = "r0";
    };
  };
  "0.3.0.0" = {
    sha256 = "fcb994c9e7aa3accaff47ec8dabde47a1a879c321457acf24d519bc3ccd340d9";
    revisions = {
      r0 = {
        nix = import ../hackage/refact-0.3.0.0-r0-5603ac2bfc088e90b0dc2ca5b92b176f134a691b5a79df2e0de43834d1b16686.nix;
        revNum = 0;
        sha256 = "5603ac2bfc088e90b0dc2ca5b92b176f134a691b5a79df2e0de43834d1b16686";
      };
      default = "r0";
    };
  };
  "0.3.0.1" = {
    sha256 = "21f0629cf251efe05ab1a1cd6d085944b612df52755a6c5c2c6b8e574687b45a";
    revisions = {
      r0 = {
        nix = import ../hackage/refact-0.3.0.1-r0-398825d5f99e3bdc54bfe3b2a40ae82e9f30090dbbd1f389128960c40fd90572.nix;
        revNum = 0;
        sha256 = "398825d5f99e3bdc54bfe3b2a40ae82e9f30090dbbd1f389128960c40fd90572";
      };
      default = "r0";
    };
  };
  "0.3.0.2" = {
    sha256 = "0ad029727797c8ca5d179c7abf1bfc135d86a7d72cf93785ee12ad243aeb1f6c";
    revisions = {
      r0 = {
        nix = import ../hackage/refact-0.3.0.2-r0-4ea82b93debdc0711e1bc4b5d8989b9e19613f369ff2049da33c5250b8d33bcd.nix;
        revNum = 0;
        sha256 = "4ea82b93debdc0711e1bc4b5d8989b9e19613f369ff2049da33c5250b8d33bcd";
      };
      default = "r0";
    };
  };
}