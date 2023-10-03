let
  crossPkgs = import <nixpkgs> {
    crossSystem = {system = "riscv64-none-elf";};
  };
in
  crossPkgs.mkShell {}
