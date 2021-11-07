# 없어진 기록 찾기
# OUTS JOIN INS
# LEFT OUTER JOIN

 SELECT ANIMAL_ID, NAME
   FROM ANIMAL_OUTS AA
   WHERE 1=1
     AND AA.ANIMAL_ID NOT IN (SELECT A.ANIMAL_ID AS ANIMAL_ID
                               FROM ANIMAL_INS A
                    LEFT OUTER JOIN ANIMAL_OUTS B 
                                 ON A.ANIMAL_ID = B.ANIMAL_ID)
ORDER BY ANIMAL_ID