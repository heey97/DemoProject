-- 필요시 데이블과 시퀀스 삭제 삭제
DROP TABLE demo_member ;
DROP TABLE communityComments ;
DROP TABLE community ;
DROP SEQUENCE community_idx_seq;
DROP SEQUENCE comment_idx_seq;

DROP TABLE NEWBOOKS ;
DROP TABLE notice ;
DROP SEQUENCE notice_idx_seq;
DROP SEQUENCE newbooks_idx_seq;


SELECT community_idx_seq.currval FROM dual;

-- 글 수정
UPDATE community 
SET title=#{title}, content=#{content} ,ip=#{ip} 
WHERE 
idx=#{idx};
-- 글 삭제
DELETE FROM community 
WHERE idx=#{idx};

-- 글 갯수
SELECT count(*) FROM community

-- 글 조회수 증가
UPDATE community 
SET 
READCOUNT = READCOUNT +1 
WHERE 
idx = #{idx};
         
-- 메인글의 댓글 갯수 조회 : 댓글 테이블 가서 메인글 번호 idx를 확인 후 실행
SELECT count(*) 
FROM communityComments 
WHERE 
 mref=#{mref};
          
-- 메인 글의 댓글 갯수 업데이트          
UPDATE community 
SET COMMENTCOUNT = 
(SELECT count(*) 
FROM communityComments 
WHERE mref=#{idx})
WHERE idx = #{idx};
      
-- 메인 글의 댓글 목록 가져오기
SELECT * FROM communityComments 
WHERE mref=#{mref};y