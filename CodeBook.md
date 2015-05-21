---
Title: "CodeBook.md"
Author: "Manuel Martínez Peinado."
Country: "Spain"
Date: "20/05/2015"
---
**************
# CODEBOOK - Data Dictionary
## Getting and Cleaning Data - Course Project
**************

1. ####  Subject
        * Type: Integer
        * Values: 1 to 30
        * Description: It works like an identifier of the person that made the measurements.

2. ####  Activity
        * Type: Character
        * Values: 
            - WALKING
            - WALKING_UPSTAIRS
            - WALKING_DOWNSTAIRS
            - SITTING
            - STANDING
            - LAYING
        * Description: Activity was being done when the measurements were taken.

3. ####  tBodyAcc.mean...X
        * Type: Double
        * Values: 
            - The measurement values have been normalised between -1 and +1
         * Description: Average of mean accelerometer 3-axial signal. The acceleration     
                        signal was separated into body and gravity acceleration signals. 
                        In this case is the body signal for X-axis. 
        * Note: prefix 't' to denote time
        
4. ####  tBodyAcc.mean...Y
        * Type: Double
        * Values: 
            - The measurement values have been normalised between -1 and +1
        * Description: Average of mean accelerometer 3-axial signal. The acceleration     
                       signal was separated into body and gravity acceleration signals. 
                       In this case is the body signal for Y-axis. 
        * Note: prefix 't' to denote time
        
5. ####  tBodyAcc.mean...Z
        * Type: Double
        * Values: 
            - The measurement values have been normalised between -1 and +1
        * Description: Average of mean accelerometer 3-axial signal. The acceleration     
                       signal was separated into body and gravity acceleration signals. 
                       In this case is the body signal for Z-axis. 
        * Note: prefix 't' to denote time
        
6. ####  tBodyAcc.std...X
        * Type: Double
        * Values: 
            - The measurement values have been normalised between -1 and +1
        * Description: Average of standard deviation accelerometer 3-axial signal. The 
                       acceleration signal was separated into body and gravity 
                       acceleration signals. In this case is the body signal for X-axis. 
        * Note: prefix 't' to denote time
        
7. ####  tBodyAcc.std...Y
        * Type: Double
        * Values: 
            - The measurement values have been normalised between -1 and +1
        * Description: Average of standard deviation accelerometer 3-axial signal. The 
                       acceleration signal was separated into body and gravity 
                       acceleration signals. In this case is the body signal for Y-axis. 
        * Note: prefix 't' to denote time
        
8. ####  tBodyAcc.std...Z
        * Type: Double
        * Values: 
            - The measurement values have been normalised between -1 and +1
        * Description: Average of standard deviation accelerometer 3-axial signal. The 
                       acceleration signal was separated into body and gravity 
                       acceleration signals. In this case is the body signal for Z-axis. 
        * Note: prefix 't' to denote time

9. ####  tGravityAcc.mean...X
        * Type: Double
        * Values: 
            - The measurement values have been normalised between -1 and +1
        * Description: Average of mean accelerometer 3-axial signal. The 
                       acceleration signal was separated into body and gravity 
                       acceleration signals. In this case is the gravity signal for X-axis. 
        * Note: prefix 't' to denote time
        
10. ####  tGravityAcc.mean...Y
        * Type: Double
        * Values: 
            - The measurement values have been normalised between -1 and +1
        * Description: Average of mean accelerometer 3-axial signal. The 
                       acceleration signal was separated into body and gravity 
                       acceleration signals. In this case is the gravity signal for Y-axis. 
        * Note: prefix 't' to denote time
11. ####  tGravityAcc.mean...Z
        * Type: Double
        * Values: 
            - The measurement values have been normalised between -1 and +1
        * Description: Average of mean accelerometer 3-axial signal. The 
                       acceleration signal was separated into body and gravity 
                       acceleration signals. In this case is the gravity signal for Z-axis. 
        * Note: prefix 't' to denote time
        
12. ####  tGravityAcc.std...X
        * Type: Double
        * Values: 
            - The measurement values have been normalised between -1 and +1
        * Description: Average of standard deviation accelerometer 3-axial signal. The 
                       acceleration signal was separated into body and gravity 
                       acceleration signals. In this case is the gravity signal for X-axis. 
        * Note: prefix 't' to denote time
        
13. ####  tGravityAcc.std...Y
        * Type: Double
        * Values: 
            - The measurement values have been normalised between -1 and +1
        * Description: Average of standard deviation accelerometer 3-axial signal. The 
                       acceleration signal was separated into body and gravity 
                       acceleration signals. In this case is the gravity signal for Y-axis. 
        * Note: prefix 't' to denote time
        
14. ####  tGravityAcc.std...Z
        * Type: Double
        * Values: 
            - The measurement values have been normalised between -1 and +1
        * Description: Average of standard deviation accelerometer 3-axial signal. The 
                       acceleration signal was separated into body and gravity 
                       acceleration signals. In this case is the gravity signal for Z-axis. 
        * Note: prefix 't' to denote time
        

15. ####  tBodyAccJerk.mean...X
        * Type: Double
        * Values: 
            - The measurement values have been normalised between -1 and +1
        * Description: The body linear acceleration was derived in time to obtain Jerk     
                       signals. This value is the average of the mean for X-axis.
        * Note: prefix 't' to denote time
        
16. ####  tBodyAccJerk.mean...Y
        * Type: Double
        * Values: 
            - The measurement values have been normalised between -1 and +1
        * Description: The body linear acceleration was derived in time to obtain Jerk     
                       signals. This value is the average of the mean for Y-axis.
        * Note: prefix 't' to denote time
17. ####  tBodyAccJerk.mean...Z
        * Type: Double
        * Values: 
            - The measurement values have been normalised between -1 and +1
        * Description: The body linear acceleration was derived in time to obtain Jerk     
                       signals. This value is the average of the mean for Z-axis.
        * Note: prefix 't' to denote time
        
18. ####  tBodyAccJerk.std...X
        * Type: Double
        * Values: 
            - The measurement values have been normalised between -1 and +1
        * Description: The body linear acceleration was derived in time to obtain Jerk     
                       signals. This value is the average of the standard deviation for 
                       X-axis.
        * Note: prefix 't' to denote time
        
19. ####  tBodyAccJerk.std...Y
        * Type: Double
        * Values: 
            - The measurement values have been normalised between -1 and +1
        * Description: The body linear acceleration was derived in time to obtain Jerk     
                       signals. This value is the average of the standard deviation for 
                       Y-axis.
        * Note: prefix 't' to denote time
        
20. ####  tBodyAccJerk.std...Z
        * Type: Double
        * Values: 
            - The measurement values have been normalised between -1 and +1
        * Description: The body linear acceleration was derived in time to obtain Jerk     
                       signals. This value is the average of the standard deviation for 
                       Z-axis.
        * Note: prefix 't' to denote time

21. ####  tBodyGyro.mean...X
        * Type: Double
        * Values: 
            - The measurement values have been normalised between -1 and +1
        * Description: Average of mean gyroscope 3-axial signal. In this case is the 
                       angular velocity of body for X-axis. 
        * Note: prefix 't' to denote time
        
22. ####  tBodyGyro.mean...Y
        * Type: Double
        * Values: 
            - The measurement values have been normalised between -1 and +1
        * Description: Average of mean gyroscope 3-axial signal. In this case is the 
                       angular velocity of body for Y-axis. 
        * Note: prefix 't' to denote time
        
23. ####  tBodyGyro.mean...Z
        * Type: Double
        * Values: 
            - The measurement values have been normalised between -1 and +1
        * Description: Average of mean gyroscope 3-axial signal. In this case is the 
                       angular velocity of body for Z-axis. 
        * Note: prefix 't' to denote time                
        
24. ####  tBodyGyro.std...X
        * Type: Double
        * Values: 
            - The measurement values have been normalised between -1 and +1
        * Description: Average of standard deviation gyroscope 3-axial signal. In this 
                       case is the angular velocity of body for X-axis. 
        * Note: prefix 't' to denote time                       
        
25. ####  tBodyGyro.std...Y
        * Type: Double
        * Values: 
            - The measurement values have been normalised between -1 and +1
        * Description: Average of standard deviation gyroscope 3-axial signal. In this 
                       case is the angular velocity of body for Y-axis. 
        * Note: prefix 't' to denote time                      
        
26. ####  tBodyGyro.std...Z
        * Type: Double
        * Values: 
            - The measurement values have been normalised between -1 and +1
        * Description: Average of standard deviation gyroscope 3-axial signal. In this 
                       case is the angular velocity of body for Z-axis. 
        * Note: prefix 't' to denote time                       
        
27. ####  tBodyGyroJerk.mean...X
        * Type: Double
        * Values: 
            - The measurement values have been normalised between -1 and +1
        * Description: The angular velocity was derived in time to obtain Jerk signals. 
                       This value is the average of the mean for X-axis. 
        * Note: prefix 't' to denote time
        
28. ####  tBodyGyroJerk.mean...Y
        * Type: Double
        * Values: 
            - The measurement values have been normalised between -1 and +1
        * Description: The angular velocity was derived in time to obtain Jerk signals. 
                       This value is the average of the mean for Y-axis. 
        * Note: prefix 't' to denote time
        
29. ####  tBodyGyroJerk.mean...Z
        * Type: Double
        * Values: 
            - The measurement values have been normalised between -1 and +1
        * Description: The angular velocity was derived in time to obtain Jerk signals. 
                       This value is the average of the mean for Z-axis. 
        * Note: prefix 't' to denote time
        
30. ####  tBodyGyroJerk.std...X
        * Type: Double
        * Values: 
            - The measurement values have been normalised between -1 and +1
        * Description: The angular velocity was derived in time to obtain Jerk signals. 
                       This value is the average of the standard deviation for X-axis. 
        * Note: prefix 't' to denote time                       
        
31. ####  tBodyGyroJerk.std...Y
        * Type: Double
        * Values: 
            - The measurement values have been normalised between -1 and +1
        * Description: The angular velocity was derived in time to obtain Jerk signals. 
                       This value is the average of the standard deviation for Y-axis. 
        * Note: prefix 't' to denote time                       
        
32. ####  tBodyGyroJerk.std...Z
        * Type: Double
        * Values: 
            - The measurement values have been normalised between -1 and +1
        * Description: The angular velocity was derived in time to obtain Jerk signals. 
                       This value is the average of the standard deviation for Z-axis. 
        * Note: prefix 't' to denote time
        
33. ####  tBodyAccMag.mean..
        * Type: Double
        * Values: 
            - The measurement values have been normalised between -1 and +1
        * Description: The magnitude of these three-dimensional signals (tBodyAcc-XYZ) 
                       was calculated using the Euclidean norm. This value is the average 
                       of the mean.
        * Note: prefix 't' to denote time                       
        
34. ####  tBodyAccMag.std..
        * Type: Double
        * Values: 
            - The measurement values have been normalised between -1 and +1
        * Description: The magnitude of these three-dimensional signals (tBodyAcc-XYZ) 
                       was calculated using the Euclidean norm. This value is the average 
                       of the standard deviation.
        * Note: prefix 't' to denote time                       
        
35. ####  tGravityAccMag.mean..
        * Type: Double
        * Values: 
            - The measurement values have been normalised between -1 and +1
        * Description: The magnitude of these three-dimensional signals (tGravityAcc-XYZ) 
                       was calculated using the Euclidean norm. This value is the average 
                       of the mean.
        * Note: prefix 't' to denote time                       
        
36. ####  tGravityAccMag.std..
        * Type: Double
        * Values: 
            - The measurement values have been normalised between -1 and +1
        * Description: The magnitude of these three-dimensional signals (tGravityAcc-XYZ) 
                       was calculated using the Euclidean norm. This value is the average 
                       of the standard deviation.
        * Note: prefix 't' to denote time                       
        
37. ####  tBodyAccJerkMag.mean..
        * Type: Double
        * Values: 
            - The measurement values have been normalised between -1 and +1
        * Description: The magnitude of these three-dimensional signals (tBodyAccJerk-XYZ) 
                       was calculated using the Euclidean norm. This value is the average 
                       of the mean.
        * Note: prefix 't' to denote time                       
        
38. ####  tBodyAccJerkMag.std..
        * Type: Double
        * Values: 
            - The measurement values have been normalised between -1 and +1
        * Description: The magnitude of these three-dimensional signals (tBodyAccJerk-XYZ) 
                       was calculated using the Euclidean norm. This value is the average 
                       of the standard deviation.
        * Note: prefix 't' to denote time                       
        
39. ####  tBodyGyroMag.mean..
        * Type: Double
        * Values: 
            - The measurement values have been normalised between -1 and +1
        * Description: The magnitude of these three-dimensional signals (tBodyGyro-XYZ) 
                       was calculated using the Euclidean norm. This value is the average 
                       of the mean.
        * Note: prefix 't' to denote time                       
        
40. ####  tBodyGyroMag.std..
        * Type: Double
        * Values: 
            - The measurement values have been normalised between -1 and +1
        * Description: The magnitude of these three-dimensional signals (tBodyGyro-XYZ) 
                       was calculated using the Euclidean norm. This value is the average 
                       of the standard deviation.
        * Note: prefix 't' to denote time                       
        
41. ####  tBodyGyroJerkMag.mean..
        * Type: Double
        * Values: 
            - The measurement values have been normalised between -1 and +1
        * Description: The magnitude of these three-dimensional signals (tBodyGyroJerk-XYZ) 
                       was calculated using the Euclidean norm. This value is the average 
                       of the mean.
        * Note: prefix 't' to denote time                       
        
42. ####  tBodyGyroJerkMag.std..
        * Type: Double
        * Values: 
            - The measurement values have been normalised between -1 and +1
        * Description: The magnitude of these three-dimensional signals (tBodyGyroJerk-XYZ) 
                       was calculated using the Euclidean norm. This value is the average 
                       of the standard deviation.
        * Note: prefix 't' to denote time
        
43. #### fBodyAcc.mean...X
        * Type: Double
        * Values: 
            - The measurement values have been normalised between -1 and +1
        * Description: Fast Fourier Transform (FFT) was applied to tBodyAcc-X. This value 
                       is the average of the mean for X-axis.
        * Note: the 'f' to indicate frequency domain signals
        
44. #### fBodyAcc.mean...Y
        * Type: Double
        * Values: 
            - The measurement values have been normalised between -1 and +1
        * Description: Fast Fourier Transform (FFT) was applied to tBodyAcc-Y. This value 
                       is the average of the mean for Y-axis.
        * Note: the 'f' to indicate frequency domain signals
        
45. #### fBodyAcc.mean...Z
        * Type: Double
        * Values: 
            - The measurement values have been normalised between -1 and +1
        * Description: Fast Fourier Transform (FFT) was applied to tBodyAcc-Z. This value     
                       is the average of the mean for Z-axis.
        * Note: the 'f' to indicate frequency domain signals
        
46. #### fBodyAcc.std...X
        * Type: Double
        * Values: 
            - The measurement values have been normalised between -1 and +1
        * Description: Fast Fourier Transform (FFT) was applied to tBodyAcc-X. This value 
                       is the average of the standard deviation for X-axis.
        * Note: the 'f' to indicate frequency domain signals
        
47. #### fBodyAcc.std...Y
        * Type: Double
        * Values: 
            - The measurement values have been normalised between -1 and +1
        * Description: Fast Fourier Transform (FFT) was applied to tBodyAcc-Y. This value 
                       is the average of the standard deviation for Y-axis.
        * Note: the 'f' to indicate frequency domain signals
        
48. #### fBodyAcc.std...Z
        * Type: Double
        * Values: 
            - The measurement values have been normalised between -1 and +1
        * Description: Fast Fourier Transform (FFT) was applied to tBodyAcc-Z. This value 
                       is the average of the standard deviation for Z-axis.
        * Note: the 'f' to indicate frequency domain signals
        
49. #### fBodyAcc.meanFreq...X
        * Type: Double
        * Values: 
            - The measurement values have been normalised between -1 and +1
        * Description: Weighted average of the frequency components to obtain a mean 
                       frequency. Fast Fourier Transform (FFT) was applied to tBodyAcc-X.                 
                       This value is the average of the mean for X-axis.
        * Note: the 'f' to indicate frequency domain signals
        
50. #### fBodyAcc.meanFreq...Y
        * Type: Double
        * Values: 
            - The measurement values have been normalised between -1 and +1
        * Description: Weighted average of the frequency components to obtain a mean 
                       frequency. Fast Fourier Transform (FFT) was applied  to tBodyAcc-Y. This value is 
                       the average of the mean for Y-axis.
        * Note: the 'f' to indicate frequency domain signals
        
51. #### fBodyAcc.meanFreq...Z
        * Type: Double
        * Values: 
            - The measurement values have been normalised between -1 and +1
        * Description: Weighted average of the frequency components to obtain a mean 
                       frequency. Fast Fourier Transform (FFT) was applied  to tBodyAcc-Z.
                       This value is the average of the mean for Z-axis.
        * Note: the 'f' to indicate frequency domain signals
        
52. #### fBodyAccJerk.mean...X
        * Type: Double
        * Values: 
            - The measurement values have been normalised between -1 and +1
        * Description: Fast Fourier Transform (FFT) was applied to tBodyAccJerk-X. This 
                       value is the average of the mean for X-axis.
        * Note: the 'f' to indicate frequency domain signals
        
53. #### fBodyAccJerk.mean...Y
        * Type: Double
        * Values: 
            - The measurement values have been normalised between -1 and +1
        * Description: Fast Fourier Transform (FFT) was applied to tBodyAccJerk-Y. This 
                       value is the average of the mean for Y-axis.
        * Note: the 'f' to indicate frequency domain signals
        
54. #### fBodyAccJerk.mean...Z
        * Type: Double
        * Values: 
            - The measurement values have been normalised between -1 and +1
        * Description: Fast Fourier Transform (FFT) was applied to tBodyAccJerk-Z. This 
                       value is the average of the mean for Z-axis.
        * Note: the 'f' to indicate frequency domain signals
        
55. #### fBodyAccJerk.std...X
        * Type: Double
        * Values: 
            - The measurement values have been normalised between -1 and +1
        * Description: Fast Fourier Transform (FFT) was applied to tBodyAccJerk-X. This 
                       value is the average of the standard deviation for X-axis.
        * Note: the 'f' to indicate frequency domain signals
        
56. #### fBodyAccJerk.std...Y
        * Type: Double
        * Values: 
            - The measurement values have been normalised between -1 and +1
        * Description: Fast Fourier Transform (FFT) was applied to tBodyAccJerk-Y. This 
                       value is the average of the standard deviation for Y-axis.
        * Note: the 'f' to indicate frequency domain signals
        
57. #### fBodyAccJerk.std...Z
        * Type: Double
        * Values: 
            - The measurement values have been normalised between -1 and +1
        * Description: Fast Fourier Transform (FFT) was applied to tBodyAccJerk-Z. This 
                       value is the average of the standard deviation for Z-axis.
        * Note: the 'f' to indicate frequency domain signals
        
58. #### fBodyAccJerk.meanFreq...X
        * Type: Double
        * Values: 
            - The measurement values have been normalised between -1 and +1
        * Description: Weighted average of the frequency components to obtain a mean 
                       frequency. Fast Fourier Transform (FFT) was applied  to 
                       tBodyAccJerk-X. This value is the average of the mean for X-axis.
        * Note: the 'f' to indicate frequency domain signals
        
59. #### fBodyAccJerk.meanFreq...Y
        * Type: Double
        * Values: 
            - The measurement values have been normalised between -1 and +1
        * Description: Weighted average of the frequency components to obtain a mean 
                       frequency. Fast Fourier Transform (FFT) was applied to 
                       tBodyAccJerk-Y. This value is the average of the mean for Y-axis.
        * Note: the 'f' to indicate frequency domain signals
        
60. #### fBodyAccJerk.meanFreq...Z
        * Type: Double
        * Values: 
            - The measurement values have been normalised between -1 and +1
        * Description: Weighted average of the frequency components to obtain a mean 
                       frequency. Fast Fourier Transform (FFT) was applied to
                       tBodyAccJerk-Z. This value is the average of the mean for Z-axis.
        * Note: the 'f' to indicate frequency domain signals
        
61. #### fBodyGyro.mean...X
        * Type: Double
        * Values: 
            - The measurement values have been normalised between -1 and +1
        * Description: Fast Fourier Transform (FFT) was applied to fBodyGyro-X. This 
                       value is the average of the mean for X-axis.
        * Note: the 'f' to indicate frequency domain signals
        
62. #### fBodyGyro.mean...Y
        * Type: Double
        * Values: 
            - The measurement values have been normalised between -1 and +1
        * Description: Fast Fourier Transform (FFT) was applied to fBodyGyro-Y. This 
                       value is the average of the mean for Y-axis.
        * Note: the 'f' to indicate frequency domain signals
        
63. #### fBodyGyro.mean...Z
        * Type: Double
        * Values: 
            - The measurement values have been normalised between -1 and +1
        * Description: Fast Fourier Transform (FFT) was applied to fBodyGyro-Z. This 
                       value is the average of the mean for Z-axis.
        * Note: the 'f' to indicate frequency domain signals
        
64. #### fBodyGyro.std...X
        * Type: Double
        * Values: 
            - The measurement values have been normalised between -1 and +1
        * Description: Fast Fourier Transform (FFT) was applied to fBodyGyro-X. This 
                       value is the average of the standard deviation for X-axis.
        * Note: the 'f' to indicate frequency domain signals
        
65. #### fBodyGyro.std...Y
        * Type: Double
        * Values: 
            - The measurement values have been normalised between -1 and +1
        * Description: Fast Fourier Transform (FFT) was applied to fBodyGyro-Y. This 
                       value is the average of the standard deviation for Y-axis.
        * Note: the 'f' to indicate frequency domain signals
        
66. #### fBodyGyro.std...Z
        * Type: Double
        * Values: 
            - The measurement values have been normalised between -1 and +1
        * Description: Fast Fourier Transform (FFT) was applied to fBodyGyro-Z. This 
                       value is the average of the standard deviation for Z-axis.
        * Note: the 'f' to indicate frequency domain signals
        
67. #### fBodyGyro.meanFreq...X
        * Type: Double
        * Values: 
            - The measurement values have been normalised between -1 and +1
        * Description: Weighted average of the frequency components to obtain a mean 
                       frequency. Fast Fourier Transform (FFT) was applied to
                       fBodyGyro-X. This value is the average of the mean for X-axis.
        * Note: the 'f' to indicate frequency domain signals
        
68. #### fBodyGyro.meanFreq...Y         
        * Type: Double
        * Values: 
            - The measurement values have been normalised between -1 and +1
        * Description: Weighted average of the frequency components to obtain a mean 
                       frequency. Fast Fourier Transform (FFT) was applied to
                       fBodyGyro-Y. This value is the average of the mean for Y-axis.
        * Note: the 'f' to indicate frequency domain signals
        
69. #### fBodyGyro.meanFreq...Z
        * Type: Double
        * Values: 
            - The measurement values have been normalised between -1 and +1
        * Description: Weighted average of the frequency components to obtain a mean 
                       frequency. Fast Fourier Transform (FFT) was applied to
                       fBodyGyro-Z. This value is the average of the mean for Z-axis.
        * Note: the 'f' to indicate frequency domain signals
        
70. #### fBodyAccMag.mean..        
        * Type: Double
        * Values: 
            - The measurement values have been normalised between -1 and +1
        * Description: Fast Fourier Transform (FFT) was applied to fBodyAccMag. This 
                       value is the average of the mean.
        * Note: the 'f' to indicate frequency domain signals
        
71. #### fBodyAccMag.std..
        * Type: Double
        * Values: 
            - The measurement values have been normalised between -1 and +1
        * Description: Fast Fourier Transform (FFT) was applied to fBodyAccMag. This 
                       value is the average of the standard deviation.
        * Note: the 'f' to indicate frequency domain signals
        
72. #### fBodyAccMag.meanFreq..
        * Type: Double
        * Values: 
            - The measurement values have been normalised between -1 and +1
        * Description: Weighted average of the frequency components to obtain a mean 
                       frequency. Fast Fourier Transform (FFT) was applied to
                       fBodyAccMag. This value is the average of the mean.
        * Note: the 'f' to indicate frequency domain signals
        
73. #### fBodyBodyAccJerkMag.mean..
        * Type: Double
        * Values: 
            - The measurement values have been normalised between -1 and +1
        * Description: Fast Fourier Transform (FFT) was applied to fBodyBodyAccJerkMag. 
                       This value is the average of the mean.
        * Note: the 'f' to indicate frequency domain signals
        
74. #### fBodyBodyAccJerkMag.std..
        * Type: Double
        * Values: 
            - The measurement values have been normalised between -1 and +1
        * Description: Fast Fourier Transform (FFT) was applied to fBodyBodyAccJerkMag. 
                       This value is the average of the standard deviation.
        * Note: the 'f' to indicate frequency domain signals
        
75. #### fBodyBodyAccJerkMag.meanFreq..
        * Type: Double
        * Values: 
            - The measurement values have been normalised between -1 and +1
        * Description: Weighted average of the frequency components to obtain a mean 
                       frequency. Fast Fourier Transform (FFT) was applied to
                       fBodyBodyAccJerkMag. This value is the average of the mean.
        * Note: the 'f' to indicate frequency domain signals
        
76. #### fBodyBodyGyroMag.mean..        
        * Type: Double
        * Values: 
            - The measurement values have been normalised between -1 and +1
        * Description: Fast Fourier Transform (FFT) was applied to fBodyBodyGyroMag. 
                       This value is the average of the mean.
        * Note: the 'f' to indicate frequency domain signals
        
77. #### fBodyBodyGyroMag.std..
        * Type: Double
        * Values: 
            - The measurement values have been normalised between -1 and +1
        * Description: Fast Fourier Transform (FFT) was applied to fBodyBodyGyroMag. 
                       This value is the average of the standard deviation.
        * Note: the 'f' to indicate frequency domain signals
        
78. #### fBodyBodyGyroMag.meanFreq..
        * Type: Double
        * Values: 
            - The measurement values have been normalised between -1 and +1
        * Description: Weighted average of the frequency components to obtain a mean 
                       frequency. Fast Fourier Transform (FFT) was applied to
                       fBodyBodyGyroMag. This value is the average of the mean.
        * Note: the 'f' to indicate frequency domain signals
        
79. #### fBodyBodyGyroJerkMag.mean..
        * Type: Double
        * Values: 
            - The measurement values have been normalised between -1 and +1
        * Description: Fast Fourier Transform (FFT) was applied to fBodyBodyGyroJerkMag. 
                       This value is the average of the mean.
        * Note: the 'f' to indicate frequency domain signals
        
80. #### fBodyBodyGyroJerkMag.std..
        * Type: Double
        * Values: 
            - The measurement values have been normalised between -1 and +1
        * Description: Fast Fourier Transform (FFT) was applied to fBodyBodyGyroJerkMag. 
                       This value is the average of the standard deviation.
        * Note: the 'f' to indicate frequency domain signals
        
81. #### fBodyBodyGyroJerkMag.meanFreq..
        * Type: Double
        * Values: 
            - The measurement values have been normalised between -1 and +1
        * Description: Weighted average of the frequency components to obtain a mean 
                       frequency. Fast Fourier Transform (FFT) was applied to
                       fBodyBodyGyroJerkMag. This value is the average of the mean.
        * Note: the 'f' to indicate frequency domain signals




