temp_block 2 = f_k(temp_block, K1);
plaintext_block = IPinv(temp_block2); #reverses the first steps in SDES Encryption

def SDESDecrypt(plaintext_block, k):
    (K1, K2) = SDESKeySchedule(K);
    temp_block1 = IP(plaintext_block);
    temp_block2 = f_K(temp_block1, K2);
    temp_block3 = SW(temp_block2);
    temp_block4 = f_K(temp_block3, K1);
    output_block = IPinv(temp_block4);
    return output_block;