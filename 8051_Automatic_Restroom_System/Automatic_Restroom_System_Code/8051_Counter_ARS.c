#include<reg51.h> 

sbit PIR = P2^7;
sbit IR = P2^6;
sbit RELAY1 = P2^5;
sbit RELAY2 = P2^3;

void MSdelay(unsigned int val)
{
     unsigned int i,j;
        for(i=0;i<=val;i++)
            for(j=0;j<112;j++);	/* Delay of 1 ms for 11.0592MHz Frequency */
}


void main (void) {
	while(1) {
		if(PIR==1){
			RELAY1 = 0; /*PIR delay is set using the trimpot on the sensor*/
			if(IR==1){	    
				RELAY2 = 0;
			}
			else{
				RELAY2 = 1;
				MSdelay(5000);
			}
		}
		else{
			RELAY1 = 1;
			}
	}	
}