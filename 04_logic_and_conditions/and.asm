define show_flags
    # Print raw value
    printf "EFLAGS = 0x%x\n", $eflags
    # Decode common flags
    if ($eflags & 0x1)
    printf "CF=1 (Carry Flag)\n"
    else
    printf "CF=0\n"
    end
    if ($eflags & 0x4)
    printf "PF=1 (Parity Flag)\n"
    else
    printf "PF=0\n"
    end
    if ($eflags & 0x10)
    printf "AF=1 (Auxiliary Carry Flag)\n"
    else
    printf "AF=0\n"
    end
    if ($eflags & 0x40)
    printf "ZF=1 (Zero Flag)\n"
    else
    printf "ZF=0\n"

    end
    if ($eflags & 0x80)
    printf "SF=1 (Sign Flag)\n"
    else    
    printf "SF=0\n"
    end
    if ($eflags & 0x100)
    printf "TF=1 (Trap Flag)\n"
    else    
        printf "TF=0\n"
    end
    if ($eflags & 0x200)
    printf "IF=1 (Interrupt Enable Flag)\n"
    else
    printf "IF=0\n"
    end
    if ($eflags & 0x400)
    printf "DF=1 (Direction Flag)\n"
else
printf "DF=0\n"
end
if ($eflags & 0x800)
printf "OF=1 (Overflow Flag)\n"
else
printf "OF=0\n"
end

End

set debuginfod enabled off

set pagination off

define s
stepi
end

define n
nexti
End

define run_start
break _start
run
end