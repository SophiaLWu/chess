require "spec_helper"

module Chess
  describe Queen do

    describe "#possible_moves" do
      
      describe "when the white queen is at location [0,3]" do
        let(:queen) { Queen.new("white", [0,3]) }

        it "returns [[1,3],[2,3],[3,3],[4,3],[5,3],[6,3],[7,3],
             [0,2],[0,1],[0,0],
             [0,4],[0 5],[0,6],[0,7],
             [1,2],[2,1],[3,0],
             [1,4],[2,5],[3,6],[4,7]]" do
          expect(queen.possible_moves).to eql(
            [[1,3],[2,3],[3,3],[4,3],[5,3],[6,3],[7,3],
             [0,2],[0,1],[0,0],
             [0,4],[0,5],[0,6],[0,7],
             [1,2],[2,1],[3,0],
             [1,4],[2,5],[3,6],[4,7]])
        end
      end

      describe "when the black queen is at location [4,4]" do
        let(:queen) { Queen.new("black", [4,4]) }

        it "returns [[3,4],[2,4],[1,4],[0,4],
             [5,4],[6,4],[7,4],
             [4,3],[4,2],[4,1],[4,0],
             [4,5],[4,6],[4,7],
             [5,3],[6,2],[7,1],
             [5,5],[6,6],[7,7],
             [3,3],[2,2],[1,1],[0,0],
             [3,5],[2,6],[1,7]]" do
          expect(queen.possible_moves).to eql(
            [[3,4],[2,4],[1,4],[0,4],
             [5,4],[6,4],[7,4],
             [4,3],[4,2],[4,1],[4,0],
             [4,5],[4,6],[4,7],
             [5,3],[6,2],[7,1],
             [5,5],[6,6],[7,7],
             [3,3],[2,2],[1,1],[0,0],
             [3,5],[2,6],[1,7]])
        end
      end

      describe "when the black queen is at location [0,7]" do
        let(:queen) { Queen.new("black", [0,7]) }

        it "returns [[1,7],[2,7],[3,7],[4,7],[5,7],[6,7],[7,7],
             [0,6],[0,5],[0,4],[0,3],[0,2],[0,1],[0,0],
             [1,6],[2,5],[3,4],[4,3],[5,2],[6,1],[7,0]]" do
          expect(queen.possible_moves).to eql(
            [[1,7],[2,7],[3,7],[4,7],[5,7],[6,7],[7,7],
             [0,6],[0,5],[0,4],[0,3],[0,2],[0,1],[0,0],
             [1,6],[2,5],[3,4],[4,3],[5,2],[6,1],[7,0]])
        end
      end

      describe "when the white queen is at location [7,5]" do
        let(:queen) { Queen.new("white", [7,5]) }

        it "returns [[6,5],[5,5],[4,5],[3,5],[2,5],[1,5],[0,5],
             [7,4],[7,3],[7,2],[7,1],[7,0],
             [7,6],[7,7],
             [6,4],[5,3],[4,2],[3,1],[2,0],
             [6,6],[5,7]]" do
          expect(queen.possible_moves).to eql(
            [[6,5],[5,5],[4,5],[3,5],[2,5],[1,5],[0,5],
             [7,4],[7,3],[7,2],[7,1],[7,0],
             [7,6],[7,7],
             [6,4],[5,3],[4,2],[3,1],[2,0],
             [6,6],[5,7]])
        end
      end

    end

  end
end