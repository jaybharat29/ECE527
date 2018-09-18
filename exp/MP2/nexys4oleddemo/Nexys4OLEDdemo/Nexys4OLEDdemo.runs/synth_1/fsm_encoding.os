
 add_fsm_encoding \
       {SpiCtrl.current_state} \
       { }  \
       {{000 0000} {001 0001} {010 0010} {011 0011} {100 0100} {101 0101} {110 0110} {111 0111} }

 add_fsm_encoding \
       {Delay.current_state} \
       { }  \
       {{00 000} {01 001} {10 010} {11 011} }
